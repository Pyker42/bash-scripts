#! /bin/bash

# Major Debian-based Update Script
# Version 1.0
# Jared Haviland
# Security Analyst @ LLUMC

# This script runs updates through the apt package manager.
# This updater will resolve new package dependencies. It is
# possible that the script will break existing packages.

# Note: This script must be run with sudo or as root.

apt-get update && apt-get dist-upgrade -y
