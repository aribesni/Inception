
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'aribesni'@'%' IDENTIFIED BY 'mdp';
GRANT ALL PRIVILEGES ON wordpress.* TO 'aribesni'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_mdp';