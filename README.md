# Install upack
  - `git clone https://github.com/larkvirtual/upack.git`
  - `cd upack`
  - `sudo make install`

# Uninstall upack
  - `cd upack`
  - `sudo make uninstall`

# Update upack
  - `cd upack`
  - `sudo make uninstall`
  - `git pull`
  - `sudo make install`

# Use upack
  - `sudo upack dup`
  - `sudo upack install sshfs`
  - `sudo upack remove sshfs`
  - `     upack install --dry-run sshfs`
  - `sudo upack remove -y sshfs`
  - `upack --list-pkgs`
  - `upack --list-supported`
  - `upack --version`
