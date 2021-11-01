docker run -d --name mysql_container --network ergo-app --network-alias mysql -p 3306:3306 -v todo-mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=movies_dataset my-mysql

