#! /bin/bash

# Debian-based Update Script
# Version 2.0
# Jared Haviland
# Senior Security Specialist @ LLUH

# This script runs updates through the apt package manager.

# Note: This script must be run with sudo or as root.
#------------------------------------------------------------------------------


# Update source information and perform base package upgrades.
apt-get update && apt-get upgrade -y

# Update packages that require modifications or installation of new packages
apt-get dist-upgrade -y

# Remove deprecated packages
apt-get autoremove -y

# Cleanup files
apt-get autoclean 


#------------------------------------------------------------------------------

# Version History
# 1.0 - 10/27/16 - Initial script
# 2.0 - 5/22/17 - Add dist-upgrade, autoremove and autoclean commands
