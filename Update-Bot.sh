#!/bin/bash
#
# This script is made to automatically download and use the latest
# version of Ar1i's PokemonGo-Bot.
#
#
#
# Made for: (Ar1i) - https://github.com/Ar1i/PokemonGo-Bot
# Made by: (Kongzted Development) - https://github.com/KongztedDev
#
# DO NOT CHANGE ANYTHING IN THIS FILE! - DO NOT CHANGE ANYTHING IN THIS FILE! - DO NOT CHANGE ANYTHING IN THIS FILE! - DO NOT CHANGE ANYTHING IN THIS FILE!

#Variables
DATE=`date +%d-%m-%Y_%H:%M`
ALIAS="[PGB Updater] "

#Code
if [ -d PokemonGo-Bot/ ]; then                                              # IF PGB UPDATER NEEDS TO UPDATE - NOT FIRST RUN
    echo $ALIAS "Creating 'temp' folder."
    mkdir temp/
    echo $ALIAS "Copying Config file to temp folder."
    cp PokemonGo-Bot/Builds\ Only/Configs/Config.txt temp/
    sleep 2
	if [ -d backups/ ]; then
	    echo $ALIAS "Backing up old master folder."
		mv PokemonGo-Bot backups/PokemonGo-Bot_$DATE
	else
		echo $ALIAS "Creating 'backups' folder."
		mkdir backups
		echo $ALIAS "Backing up old master folder."
		mv PokemonGo-Bot backups/PokemonGo-Bot_$DATE
	fi
    sleep 2
    echo $ALIAS "Downloading update."
    git clone https://github.com/Ar1i/PokemonGo-Bot.git
    sleep 2
    echo $ALIAS "Creating 'configs' folder."
    mkdir PokemonGo-Bot/Builds\ Only/Configs
    sleep 2
    echo $ALIAS "Replacing old config file into new config folder."
    cp temp/Config.txt PokemonGo-Bot/Builds\ Only/Configs/Config.txt
    sleep 2
    echo $ALIAS "Removing 'temp' folder."
    rm -rf temp/
    echo $ALIAS "Done. Enjoy your updated PokemonGo Bot!"
    sleep 5
else                                                                        # IF PGB UPDATER NEEDS TO DOWNLOAD PGB - FIRST TIME
    echo $ALIAS "Downloading the latest version of PokemonGo-Bot."
    git clone https://github.com/Ar1i/PokemonGo-Bot.git
    sleep 2
    echo $ALIAS "Creating 'configs' folder."
    mkdir PokemonGo-Bot/Builds\ Only/Configs
	echo $ALIAS "Creating 'Config.txt' file."
    touch PokemonGo-Bot/Builds\ Only/Configs/Config.txt
    sleep 2
	echo $ALIAS "Do you have Git Bash installed? Y/N"
	select yn in "Yes" "No"; do
		case $yn in
			Yes ) sleep 2; break;;
			No ) start https://git-scm.com/download/win; break;;
		esac
	done
    echo $ALIAS "Opening getting started page."
    start http://kongzted.net/projekter/PGB/get-started.html
    echo $ALIAS "Done. Enjoy your PokemonGo Bot!"
    sleep 5
fi