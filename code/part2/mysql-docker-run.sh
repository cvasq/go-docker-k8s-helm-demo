docker run --name mysql \
  -e MYSQL_USER=homer -e MYSQL_PASSWORD=123456 -e MYSQL_DATABASE=mysite \
  -p 3306:3306 -d mysql/mysql-server:5.7
