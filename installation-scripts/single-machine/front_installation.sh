#!/bin/bash

echo "Download repo"

git clone https://github.com/ManuelCoral1998/FrontEnd-DRU.git

cd FrontEnd-DRU

npm install ./movie-analyst-ui/ .

nohup node ./movie-analyst-ui/server.js 2> /dev/null &

cd ..