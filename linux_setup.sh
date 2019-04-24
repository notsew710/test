#!/bin/bash

## requirement 1-
##automate the process of provisioning a new linux virtual machine
##include: up-to-date linux environment, brew, azure-cli, git, node.js


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



