#!/bin/bash

ANDROID_APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ANDROID_APPS_DIR/tools/_all.sh"

ensure_all_android_apps_are_provisioned () {
  ensure_all_android_tools_are_provisioned
}
