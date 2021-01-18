#!/bin/bash

echo "Installing MySQL"

sudo apt-get install -y mysql-server

echo "Creating schema and user"

sudo mysql < ./create_schema_user.sql

echo "Populating DB"

sudo mysql movie_db < Ramp-Up/movie-analyst-api/data_model/table_creation_and_inserts.sql 