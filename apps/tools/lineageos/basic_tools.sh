#!/bin/bash

# SOURCE

source "src/packages/apt/packages.sh"


# INTERFACE

ensure_basic_lineageos_tools_are_provisioned () {
  ensure_lineageos_build_tools_are_provisioned
  ensure_lineageos_mesa_tools_are_provisioned
}

ensure_lineageos_build_tools_are_provisioned () {
  apt_ensure_packages_are_installed \
    bc \
    bison \
    build-essential \
    ccache \
    curl \
    flex \
    g++-multilib \
    gcc-multilib \
    git \
    git-lfs \
    gnupg \
    gperf \
    imagemagick \
    protobuf-compiler \
    python3-protobuf \
    lib32readline-dev \
    lib32z1-dev \
    libdw-dev \
    libelf-dev \
    lz4 \
    libsdl1.2-dev \
    libssl-dev \
    libxml2 \
    libxml2-utils \
    lzop \
    pngcrush \
    rsync \
    schedtool \
    squashfs-tools \
    xsltproc \
    zip \
    zlib1g-dev
}

ensure_lineageos_mesa_tools_are_provisioned () {
  apt_ensure_packages_are_installed \
    meson \
    glslang-tools \
    python3-mako
}
