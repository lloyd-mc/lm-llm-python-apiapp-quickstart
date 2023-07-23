docker compose up -d
# https://upcloud.com/resources/tutorials/deploy-wordpress-with-docker-compose
start http://localhost:8080

start http://localhost:8080/wp-admin/setup-config.php?step=1


# admin
start http://localhost:8080/wp-admin/install.php


# admin
start http://localhost:8080/wp-admin/install.php