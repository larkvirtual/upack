# Supported OS/Distros
  - Debian GNU/Linux
  - Ubuntu
  - Fedora
  - CentOS
  - Dyson
  - Manjaro
  - ALT Linux 8
  - FreeBSD
  - openSUSE
  - Solaris

# Dependencies
  - make (during install, update, uninstall time only)
  - git (during install, update time only)

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
  - `sudo upack remove -y sshfs # Removes sshfs (and unneeded dependencies if supported)`
  - `upack install --dry-run sshfs`
  - `upack --list-commands` # Supported command list for current OS/Distro
  - `upack --list-supported-envs`
  - `upack --version`
