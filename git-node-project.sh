#!/bin/bash

## automate the process of setting up a new git project repository structure
##include: verify req-1 is valid, create web node-based project

## make sure brew, git and node are installed 
if ! [ -f /usr/bin/brew ] \
	&& [ -f /usr/bin/git ] \
	&& [ -f /home/linuxbrew/.linuxbrew/bin/node ]
	exit 1
		echo "Run Setup"
fi
## make sure that the directory exsists 
	directory=$1

	if ! [ -d "$directory" ]; then 
		mkdir $directory
fi
## make sure directiory is empty
	if [ -n (ls -A $directory) ]; then 
		echo "directory is not empty"
		exit 1
fi
cd ~
cd revature_p0
    git config --global user.name "Josh W"		##configure git username 
    git config --global user.email notsew710@gmail.com  ##configure git email 
    git init		##initialize git repository
    npm init -y		##initialize node package manager to manage node dependacies 

## start creating git file struc
    mkdir git-project 
	cd git-project
    mkdir docker
	cd docker
    touch \
    dockerfile \
    dockerup.yaml

	cd ..
	mkdir github
	cd github
    mkdir \
    ISSUE_TEMPLATE \
    PULL_REQUEST_TEMPLATE

	cd ISSUE_TEMPLATE
    touch issue-template.md
	cd ..
	cd PULL_REQUEST_TEMPLATE
    touch pull-request-template.md
	cd ..
    touch \
    CODE-OF-CONDUCT.md \
    CONTRIBUTING.md

    ## root
	cd ..
    mkdir \
    client \
    src \
    test
	cd client
    touch .gitkeep
	cd ..
	cd src
    touch .gitkeep
	cd ..
	cd test
    touch .gitkeep
	cd ..

    touch \
    .azureup.yaml \
    .dockerignore \
    .editorconfig \
    .gitignore \
    .markdownlint.yaml \
    CHANGELOG.md \
    LICENSE.txt \
    README.md

echo "git file stuc complete"
