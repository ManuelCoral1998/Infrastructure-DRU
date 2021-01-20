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

#echo "============ INSTALL MYSQL ============"

#sudo apt-get install -y mysql-server

echo "=========== EXECUTING OTHER SCRIPTS ============"

if [ "$HOSTNAME" = Front ]; then
    echo "Front installation"
    sh ./front_installation.sh
elif [ "$HOSTNAME" == Api ]; then
    echo "Back installation"
    sh ./back_installation.sh
else
    sh ./front_installation.sh
    sh ./back_installation.sh
fi