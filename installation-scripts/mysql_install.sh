#!/bin/bash

echo "Installing MySQL"

echo "Installing mysql client"

sudo apt-get install -y mysql-client
# sudo apt-get install -y mysql-server

# echo "Creating schema and user"

# sudo mysql < ./create_schema_user.sql

# echo "Populating DB"

# sudo mysql movie_db < ./BackEnd-DRU/movie-analyst-api/data_model/table_creation_and_inserts.sql 

echo "Populating DB"

mysql -u $DB_USER -p$DB_PASS -h $DB_HOST -P $DB_PORT < ./BackEnd-DRU/movie-analyst-api/data_model/table_creation_and_inserts.sql 