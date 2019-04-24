#!/bin/bash

## automate setup

apt update
apt upgrade -qy
apt install -qy build-essential curl file git

echo "Ubuntu Setup Complete"

## install brew
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

echo "Brew setup Complete"

## install azure-cli
        brew install azure-cli
## install gcc
	brew install gcc
## install git
        brew install git
## install node
        brew install node


echo "New environment is now setup" 



