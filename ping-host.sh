#! /bin/bash

# Ping Check for Live Hosts Script
# Version 1.0
# by Jared Haviland
# Senior Security Specialist @ LLUHSS

# This script takes a list of hosts (either IP or FQDN) and checks if they respond to ping.
# Compiles a list detailing which hosts responded and which did not.
# ------------------------------------------------------------------------------------------

clear
echo -e "*********************************************************************"
echo -e "Ping Check for Live Hosts Script"
echo -e "Version 1.0 - by Jared Haviland"
echo -e "*********************************************************************"

# Get host file and output file from user
echo -e "\n\n\n\n"
read -p "Please enter text file with hosts to ping: " inputFile
read -p "Please enter file to for script output: " outputFile

# Title and Timestamp output file
echo -e "\n\n---------------------------------------------------------------------"
echo -e "Creating and formatting $outputFile."
echo -e "---------------------------------------------------------------------\n"
echo -e "**** Results for Live Hosts Check run on hostlist: $inputFile ****" > $outputFile
echo -e "** Start Time: $(date) **\n\n" >> $outputFile

# Loop through host file, ping each one and record results
echo -e "\n---------------------------------------------------------------------"
echo -e "Pinging hosts from $inputFile."
echo -e "---------------------------------------------------------------------\n\n"
cat $inputFile | while read host
do
    echo -e "\n-- Pinging $host --"
    ping -c 1 $host > /dev/null
    if [ $? -eq 0 ]; then
        echo -e "$host is up."
        echo -e "$host is up." >> $outputFile
    else
        echo -e "$host is down."
        echo -e "$host is down." >> $outputFile
    fi
done

# Stamp finish time to output file and end script
echo -e "\n\n** Finish Time: $(date) **" >> $outputFile
echo -e "\n\n---------------------------------------------------------------------"
echo -e "Script completed. Results can be found in $outputFile."
echo -e "---------------------------------------------------------------------\n\n"


# ------------------------------------------------------------------------------------------

# Version History
# 1.0 - 7/10/17 - Jared Haviland - Initial Script
