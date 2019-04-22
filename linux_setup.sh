#!/bin/bash

## update bash
sudo apt update
sudo apt -y upgrade 

## brew
        sudo apt-get install build-essential curl file git

        sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

## brew azure-cli
        brew install azure-cli
## brew git
        brew install git
## brew node
        brew install node
## brew gcc
	brew install gcc

echo "New environment is now setup" 



