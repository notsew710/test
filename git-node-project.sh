#!/bin/bash

if ! [ -z $(which git) ] && ! [ -z $(which node) ]; then
    git init
    npm init -y
	mkdir git-project 
	cd git-project
    mkdir docker
	cd docker
    touch \
    dockerfile \
    dockerup.yaml

    ## github
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
else 
    ./linux-setup.sh
    git init
    npm init -y
        mkdir git-project
        cd git-project
    mkdir docker
        cd docker
    touch \
    dockerfile \
    dockerup.yaml

    ## github
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
    touch.gitkeep
        cd ..
        cd test
    touch.gitkeep
        cd ..

    touch \
    .azureup.yaml \
    .dockerignore \
    .editorconfig \
    .gitignore \
    .markdownlint.yaml \
    CHANGELOG.md \
    LICENSE.txt \
    README.md1
fi

exit 0
