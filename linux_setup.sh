#!/bin/bash

## automate setup

if [ -z $(uname -v) | grep /\#\d*-(/w)/] 

##ubuntu
apt update
apt upgrade -y
## brew
        apt install build-essential curl file git

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



