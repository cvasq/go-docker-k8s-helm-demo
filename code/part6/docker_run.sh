docker run -d --name hello-sql \
-e LISTENING_PORT="8080" \
-e DB_USER="homer" \
-e DB_PASSWORD="123456" \
-e DB_HOST="127.0.0.1" \
-e DB_PORT="3306" \
-e DB_NAME="mysite" \
-p 8080:8080 \
verifi/hello-sql:cvasquez