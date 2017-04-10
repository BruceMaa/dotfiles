#! /bin/bash

caskApps=$(ls /opt/homebrew-cask/Caskroom/) # Lists the casks in the Caskroom

for app in ${caskApps}; do # For every app there, do this
    appToCheck=$(brew cask list | grep "${app}") # If the app is not present in `brew cask list`, this variable will be empty

    brew cask info $appToCheck | grep "Not installed"

    if [ $? -eq 0 ]; then # If the variable is empty, then
        echo "app===${appToCheck}"
        #brew cask install --force "${app}" # Force an install of the app
    fi
done
