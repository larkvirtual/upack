# Supported OS/Distros
  - Debian GNU/Linux
  - Ubuntu
  - Fedora
  - CentOS
  - Dyson
  - Manjaro
  - AltLinux
  - FreeBSD
  - openSUSE

# Install upack
  - `git clone https://github.com/larkvirtual/upack.git`
  - `cd upack`
  - `sudo make install`

# Uninstall upack
  - `cd upack`
  - `sudo make uninstall`

# Update upack
  - `cd upack`
  - `make update`

# Use upack
  - `sudo upack dup` # System-wide update (userland, kernel)
  - `sudo upack up` # Non-system-wide update (userland only)
  - `sudo upack install sshfs gnat 7za g++`
  - `sudo upack remove -y sshfs`
  - `upack install --dry-run sshfs`
  - `upack --list-pkgs` # Supported command list for current OS/Distro
  - `upack --list-supported`
  - `upack --version`
