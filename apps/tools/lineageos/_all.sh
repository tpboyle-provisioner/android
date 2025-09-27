#!/bin/bash

LINEAGEOS_TOOLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$LINEAGEOS_TOOLS_DIR/basic_tools.sh"
source "$LINEAGEOS_TOOLS_DIR/ncurses.sh"
source "$LINEAGEOS_TOOLS_DIR/repo.sh"
source "$LINEAGEOS_TOOLS_DIR/vm.sh"

ensure_all_lineageos_tools_are_provisioned () {
  ensure_basic_lineageos_tools_are_provisioned
  ensure_libncurses_is_installed 
  ensure_repo_is_installed 
  ensure_vm_tools_are_provisioned
}
