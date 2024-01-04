#!/bin/bash

<<COMMENT

# Update the package lists
# Upgrade installed packages
# Perform a distribution upgrade
# Remove unnecessary packages
# Clean up the local repository cache
# Clean up downloaded package files

COMMENT

UpDtUpGrd() {

	# Local List With Commands And Messages.
	local list=(
		"sudo apt update -y / --- Packages List Updated ---"
		"sudo apt upgrade -y / --- Upgrade Installed Packages ---"
		"sudo apt dist-upgrade -y / --- Perform a Distribution Upgrade ---"
		"sudo apt autoremove -y / --- Remove Unnecessary Packages ---"
		"sudo apt autoclean -y / --- Clean Up The Local Repository Cache ---"
		"sudo apt clean -y / --- Clean Up Downloaded Package Files ---"
	)

	# Style and Bold.
	BOLD=$(tput bold)
	NORMAL=$(tput sgr0)

	# Loop Over Local List.
	for item in "${list[@]}"; do

		# Split Item In List With '/' To Seperate Command and Message.
        IFS="/" read -r COMMAND MSG <<< "$item"

        # Commands And Message View In Terminal. 
	    echo " ${BOLD}${COMMAND}${NORMAL} "
	    echo "                                    "
	    echo " ------------------ "
	    echo "                                    "
	    ${COMMAND}
	    echo "                                    "
	    echo " ${BOLD}${MSG}${NORMAL} "
	    echo "                                    "
	    echo " ------------------------------------------------------- "
	    echo "                                    "
	
	done

}

UpDtUpGrd