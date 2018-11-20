$ docker exec -ti mysql bash

bash-4.2# mysql -u homer -p123456 mysite

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 239
Server version: 5.7.23 MySQL Community Server (GPL)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysite             |
+--------------------+
2 rows in set (0.00 sec)
