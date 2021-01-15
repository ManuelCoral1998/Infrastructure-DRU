#!/bin/bash

echo "Download repo"

git clone https://github.com/ManuelCoral1998/Ramp-Up.git

npm install ./Ramp-Up/movie-analyst-ui/

node ./Ramp-Up/movie-analyst-ui/server.js