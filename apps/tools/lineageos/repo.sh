#!/bin/bash


# CONFIG

REPO_URL="https://storage.googleapis.com/git-repo-downloads/repo"
REPO_DIR="$HOME/bin"
REPO_PATH="$REPO_DIR/repo"


# INTERFACE

ensure_repo_is_installed () {
  if ! repo_is_installed; then
    install_repo
  fi
  ensure_repo_location_is_in_path
}


# IMPLEMENTATION

repo_is_installed () {
  test -f "$REPO_PATH"
}

install_repo () {
  curl "$REPO_URL" > "$REPO_PATH"
  chmod a+x "$REPO_PATH"
}

ensure_repo_location_is_in_path () {
  if ! repo_location_is_in_path; then
    export PATH="$REPO_DIR:$PATH"
  fi
}

repo_location_is_in_path () {
  echo "$PATH" | grep -q "$REPO_DIR"
}
