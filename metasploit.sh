#! /bin/bash

# Metasploit Startup Script
# Version 1.0
# Jared Haviland
# Security Analyst @ LLUMC

# This script starts the Postgre SQL database
# service and then loads the Metasploit console.

# Note: this script uses sudo to start the data-
# base service but not to start the MSF concole

sudo service postgesql start
msfconsole
