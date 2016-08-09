#!/bin/bash
#
# This script is made to automatically download and use the latest
# version of Ar1i's PokemonGo-Bot.
#
#
#
# Made for: (Ar1i) - https://github.com/Ar1i/PokemonGo-Bot
# Made by: (Kongzted Development) - 



ALIAS="[PGB Updater] "

if [ -d PokemonGo-Bot/ ]; then                                              # IF PGB UPDATER NEEDS TO UPDATE - NOT FIRST RUN
    echo $ALIAS "Creating 'tmp' foler."
    mkdir tmp/
    echo $ALIAS "Copying Config file to tmp folder."
    cp PokemonGo-Bot/Builds\ Only/Configs/Config.txt tmp/
    sleep 2
    echo $ALIAS "Removing old master folder."
    rm -rf PokemonGo-Bot/
    sleep 2
    echo $ALIAS "Downloading update."
    git clone https://github.com/Ar1i/PokemonGo-Bot.git
    sleep 2
    echo $ALIAS "Creating 'configs' folder."
    mkdir PokemonGo-Bot/Builds\ Only/Configs
    sleep 2
    echo $ALIAS "Replacing old config file into new config folder."
    cp tmp/Config.txt PokemonGo-Bot/Builds\ Only/Configs/Config.txt
    sleep 2
    echo $ALIAS "Removing 'tmp' folder."
    rm -rf tmp/
    echo $ALIAS "Opening ReadME page."
    start http://kongzted.net/projekter/PGB/get-started.html
    echo $ALIAS "Done."
    sleep 5
else                                                                        # IF PGB UPDATER NEEDS TO DOWNLOAD PGB - FIRST TIME
    echo $ALIAS "Downloading the latest version of PokemonGo-Bot."
    git clone https://github.com/Ar1i/PokemonGo-Bot.git
    sleep 2
    echo $ALIAS "Creating 'configs' folder."
    mkdir PokemonGo-Bot/Builds\ Only/Configs
    touch PokemonGo-Bot/Builds\ Only/Configs/Config.txt
    sleep 2
    echo $ALIAS "Opening 'Get Started' page."
    start http://kongzted.net/projekter/PGB/get-started.html
    echo $ALIAS "Done. Enjoy your PokemonGo-Bot!"
    sleep 5
fi