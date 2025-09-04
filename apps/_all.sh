
ANDROID_APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ANDROID_APPS_DIR/tools.sh"

provision_all_android_apps () {
  ensure_android_tools_are_provisioned
}
