
source "src/packages/apt/packages.sh"

ensure_lineageos_git_tools_are_provisioned () {
  apt_ensure_packages_are_installed git git-lfs
  ensure_git_lfs_install_has_been_run
}

ensure_git_lfs_install_has_been_run () {
  if ! git_lfs_install_has_been_run; then
    git lfs install
  fi
}

git_lfs_install_has_been_run () {
  git config --list | grep -q "^filter\.lfs"
}
