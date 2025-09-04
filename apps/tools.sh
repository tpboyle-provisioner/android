
ZIP_URL="https://dl.google.com/android/repository/platform-tools-latest-linux.zip"
ZIP_FN="android-platform-tools.zip"

OPT_PATH="/opt/android-sdk-platform-tools"

ensure_android_tools_are_provisioned () {
  if ! android_tools_are_provisioned; then
    install_android_tools
  fi
}

android_tools_are_provisioned () {
  adb_is_installed && fastboot_is_installed
}

adb_is_installed () {
  test -n "$(command -v adb 2>/dev/null)"
}

fastboot_is_installed () {
  test -n "$(command -v fastboot 2>/dev/null)"
}

install_android_tools () {
  echo "Installing Android platform tools..."
  TMP_DIR=$(mktemp -d)
  chown "$USER":"$USER" "$TMP_DIR"
  wget -O "$TMP_DIR/$ZIP_FN" "$ZIP_URL"
  unzip -q "$TMP_DIR/$ZIP_FN" -d "$TMP_DIR"
  sudo mv "$TMP_DIR/platform-tools" "$OPT_PATH"
  link_android_tools_to_opt
  rm -rf "$TMP_DIR"
}

link_android_tools_to_opt () {
  sudo ln -sf "$OPT_PATH/adb" /usr/local/bin/adb
  sudo ln -sf "$OPT_PATH/fastboot" /usr/local/bin/fastboot
}
