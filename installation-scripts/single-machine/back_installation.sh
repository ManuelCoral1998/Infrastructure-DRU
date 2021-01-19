#!/bin/bash

echo "Download repo"

git clone https://github.com/ManuelCoral1998/BackEnd-DRU.git

sh ./mysql_install.sh

echo "Install dependencies"

cd BackEnd-DRU

npm install ./movie-analyst-api/ .

echo "Execute server.js"

nohup node ./movie-analyst-api/server.js 2> /dev/null &

cd ..