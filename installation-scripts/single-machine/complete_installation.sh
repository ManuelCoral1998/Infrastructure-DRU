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

echo "=========== INSTALLING MySQL ============"

sudo apt-get install -y mysql-server

echo "Download Front repo"

git clone https://github.com/ManuelCoral1998/FrontEnd-DRU.git

echo "Install dependencies frontend"

cd FrontEnd-DRU

npm install ./movie-analyst-ui/

cd ..

echo "Download Back repo"

git clone https://github.com/ManuelCoral1998/BackEnd-DRU.git

sh ./mysql_install.sh

echo "Install dependencies backend"

cd BackEnd-DRU

npm install ./movie-analyst-api/

cd ..

echo "Run Apps"

nohup node ./FrontEnd-DRU/movie-analyst-ui/server.js 2> /dev/null &
nohup node ./BackEnd-DRU/movie-analyst-api/server.js 2> /dev/null &
