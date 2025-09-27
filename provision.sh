#!/bin/bash


# LOCATE PROJECT ROOT

ANDROID_MODULE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "src/logger.sh"
source "$ANDROID_MODULE_ROOT/apps/_all.sh"


# HELPERS

log_header () {
  info "android" "Starting _android_ provisioning..."
}

log_footer () {
  info "android" "..._android_ provisioning complete."
}


# INTERFACE

provision () {
  ensure_all_android_apps_are_provisioned 
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

