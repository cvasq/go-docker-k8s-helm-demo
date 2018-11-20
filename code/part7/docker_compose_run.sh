$ docker-compose up

Creating network "hello-sql_default" with the default driver
Creating hello-sql_mysql_1_f078a700b3db ... done
Creating hello-sql_hello-sql_1_6a61d50947b1 ... done
Attaching to hello-sql_mysql_1_5158d8e244da, hello-sql_hello-sql_1_78f4465667bb
mysql_1_5158d8e244da | [Entrypoint] MySQL Docker Image 5.7.24-1.1.8
mysql_1_5158d8e244da | [Entrypoint] No password option specified for new database.
mysql_1_5158d8e244da | [Entrypoint]   A random onetime password will be generated.
hello-sql_1_78f4465667bb | 2018/11/20 00:46:28 Starting server on port: 8080
mysql_1_5158d8e244da | [Entrypoint] Initializing database

mysql_1_5158d8e244da | [Entrypoint] Database initialized

mysql_1_5158d8e244da | [Entrypoint] GENERATED ROOT PASSWORD: n3BdOm@LjIPKupEpLyk3mOjENiH
mysql_1_5158d8e244da |
mysql_1_5158d8e244da | [Entrypoint] ignoring /docker-entrypoint-initdb.d/*
mysql_1_5158d8e244da |
mysql_1_5158d8e244da | [Entrypoint] Server shut down
mysql_1_5158d8e244da | [Entrypoint] Setting root user as expired. Password will need to be changed before database can be used.
mysql_1_5158d8e244da |
mysql_1_5158d8e244da | [Entrypoint] MySQL init process done. Ready for start up.
mysql_1_5158d8e244da |
mysql_1_5158d8e244da | [Entrypoint] Starting MySQL 5.7.24-1.1.8