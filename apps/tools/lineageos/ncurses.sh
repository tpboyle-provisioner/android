#!/bin/bash

# SOURCE

source "src/packages/dpkg.sh"


# CONFIG

LIBTINFO_VERSION="6.3-2"
LIBNCURSES_VERSION="6.3-2"

LIBTINFO_URL="https://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libtinfo5_$LIBTINFO_VERSION_amd64.deb"
LIBNCURSES_URL="https://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libncurses5_$LIBNCURSES_VERSION_amd64.deb"


# INTERFACE

ensure_libncurses_is_installed () {
  dpkg_ensure_package_is_installed libtinfo5 "$LIBTINFO_URL"
  dpkg_ensure_package_is_installed libncurses5 "$LIBNCURSES_URL"
}
