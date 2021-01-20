#!/bin/bash

#echo "Creating schema and user"

#sudo mysql < ./create_schema_user.sql

echo "Populating DB"

mysql -u $DB_USER -p$DB_PASS -h $DB_HOST -P $PORT < ./BackEnd-DRU/movie-analyst-api/data_model/table_creation_and_inserts.sql 