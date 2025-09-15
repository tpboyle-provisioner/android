
source "src/packages/apt/packages.sh"

ensure_lineageos_git_tools_are_provisioned () {
  apt_ensure_packages_are_installed git git-lfs
  ensure_git_lfs_install_has_been_run
  ensure_git_change_id_fix_has_been_configured
}

ensure_git_lfs_install_has_been_run () {
  if ! git_lfs_install_has_been_run; then
    git lfs install
  fi
}

git_lfs_install_has_been_run () {
  git config --list | grep -q "^filter\.lfs"
}

ensure_git_change_id_fix_has_been_configured () {
  if git_change_id_fix_has_been_configured; then
    configure_git_change_id_fix
  fi
}

git_change_id_fix_has_been_configured () {
  git config --list | grep -q "^trailer.changeid.key=Change-Id"
}

configure_git_change_id_fix () {
  git config --global trailer.changeid.key "Change-Id"
}


