#!/bin/bash

# SOURCE

source "src/packages/apt/packages.sh"


# INTERFACE

ensure_vm_tools_are_provisioned () {
  # Use the KVM module to provision KVM
  apt_ensure_packages_are_installed \
    qemu-system-arm \
    qemu-efi-aarch64
}
