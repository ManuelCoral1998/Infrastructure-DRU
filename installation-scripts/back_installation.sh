#!/bin/bash

echo "Download repo"

git clone https://github.com/ManuelCoral1998/BackEnd-DRU.git

sh ./mysql_install.sh

echo "Install dependencies"

npm install ./BackEnd-DRU/movie-analyst-api/

echo "Execute server.js"

node ./BackEnd-DRU/movie-analyst-api/server.js