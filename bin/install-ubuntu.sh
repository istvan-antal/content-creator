#!/bin/bash
OS=$(lsb_release -si)
if [ "${OS}" != 'Ubuntu' ]; then
    echo 'This script should only be run under Ubuntu.'
    exit
fi
sudo apt-get install --assume-yes puppet git make
ssh-keyscan github.com >> ~/.ssh/known_hosts
git clone https://github.com/istvan-antal/content-creator.git
cd content-creator
make infrastructure
make