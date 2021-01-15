#!/bin/bash/

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