#! /bin/bash

# OpenVAS NVT Feed Update
# Version 1.1
# by Jared Haviland
# IS Security Specialist @ LLUH

# This script uses wget to download the archived OpenVAS NVT feed update,
# then unpacks the archive into the OpenVAS plugins folder.
# -------------------------------------------------------------------------------

# Download NVT-Feed archive from OpenVAS
echo -e "\n----------------------------------------------------"
echo -e "Downloading NVT Feed archive from www.openvas.org"
echo -e "----------------------------------------------------\n"
cd /var/lib/openvas/plugins/
wget http://www.openvas.org/openvas-nvt-feed-current.tar.bz2
echo -e "\n----------------------------------------------------"
echo -e "Download complete."
echo -e "----------------------------------------------------\n"

# Unpack archive in the OpenVAS plugins folder
echo -e "\n----------------------------------------------------"
echo -e "Unpacking NVT Archive"
echo -e "----------------------------------------------------\n"
tar -jxvf openvas-nvt-feed-current.tar.bz2
echo -e "\n----------------------------------------------------"
echo -e "NVT Feed update complete."
echo -e "----------------------------------------------------\n"

# Stop OpenVAS services
echo -e "\n\n\n----------------------------------------------------"
echo -e "Restarting OpenVAS services after update."
echo -e "----------------------------------------------------\n"
openvas-stop
openvas-start
echo -e "\n----------------------------------------------------"
echo -e "OpenVAS services sucessfully restarted."
echo -e "----------------------------------------------------\n\n\n"

# Make sure GSAD starts and is listening on proper interface
gsad
gsad --listen=192.168.42.102
# fin


# Version History
# 1.0 - 11/22/16 - Initial script
# 1.1 - 11/29/16 - Changed Openvas services stop point. Set GSAD listening interface
