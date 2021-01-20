CREATE USER 'applicationuser'@'localhost' IDENTIFIED BY 'applicationuser';
GRANT ALL PRIVILEGES ON * . * TO 'applicationuser'@'localhost';
CREATE SCHEMA IF NOT EXISTS movieDb;