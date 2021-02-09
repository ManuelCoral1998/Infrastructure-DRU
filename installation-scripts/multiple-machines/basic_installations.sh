#!/bin/bash

echo "=========== UPDATING ============="
sudo apt update

echo "=========== INSTALLING GIT ============"

if git --version 2>&1 >/dev/null ; then
    echo "Already install"
else
    sudo apt-get install -y git
fi

echo "=========== INSTALLING NODEJS ============"

if node --version 2>&1 >/dev/null ; then
    echo "Already install"
else 
    sudo apt-get install -y nodejs
fi

echo "=========== INSTALLING NPM ============"

if npm --version 2>&1 >/dev/null ; then
    echo "Already install"
else
    sudo apt-get install -y npm
fi

echo "=========== EXECUTING OTHER SCRIPTS ============"

if [ "$HOSTNAME" = Front ]; then
    echo "Front installation"
    sh ./front_installations.sh
elif [ "$HOSTNAME" == Api ]; then
    echo "Back installation"
    sh ./back_installations.sh
else
    echo "Running in a single machine"
fi