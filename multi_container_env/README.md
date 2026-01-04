# Project: set up wordpress, phpMyAdmin, MariaDB in a Multi-container Environment 
this is part of the bootcamp on udemy.
## Shell Scripts Documentation

### start.sh
 this sript creates a docker network named blog, then starts three containers:
     1. A MariaDB database container named db with a root password set to "password" and a volume for data persistence.
     2. A phpMyAdmin container named blog-phpmyadmin that connects to the db container and maps port 9090 on the host to port 80 in the container.
     3. A WordPress container named blog-wordpress that connects to the blog network and maps port 9091 on the host to port 80 in the container, with a volume for WordPress data persistence.

### stop.sh
    this is to ensure the containers are stopped before removing the network