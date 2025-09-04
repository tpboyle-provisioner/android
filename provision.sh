#!/bin/bash


# LOCATE PROJECT ROOT

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$DIR/apps/_all.sh"

[ -f "$DIR/conf.sh" ] && source "$DIR/conf.sh"


# HELPERS

log_header () {
  info "android" "Starting _android_ provisioning..."
}

log_footer () {
  info "android" "..._android_ provisioning complete."
}


# INTERFACE

provision () {
  provision_all_android_apps
}


# MAIN

main () {
  log_header
  provision
  log_footer
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi

