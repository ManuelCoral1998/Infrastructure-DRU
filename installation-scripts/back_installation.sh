#!/bin/bash

echo "Download repo"

git clone https://github.com/ManuelCoral1998/Ramp-Up.git

sh ./mysql_install.sh

echo "Install dependencies"

npm install ./Ramp-Up/movie-analyst-api/

echo "Execute server.js"

node ./Ramp-Up/movie-analyst-api/server.js