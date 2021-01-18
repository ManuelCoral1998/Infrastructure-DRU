#!/bin/bash

echo "Download repo"

git clone https://github.com/ManuelCoral1998/FrontEnd-DRU.git

npm install ./FrontEnd-DRU/movie-analyst-ui/

node ./FrontEnd-DRU/movie-analyst-ui/server.js