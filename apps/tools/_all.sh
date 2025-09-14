#!/bin/bash

ANDROID_TOOLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ANDROID_TOOLS_DIR/android.sh"
source "$ANDROID_TOOLS_DIR/lineageos/_all.sh"

ensure_all_android_tools_are_provisioned () {
  # ensure_android_tools_are_provisioned
  ensure_all_lineageos_tools_are_provisioned
}
