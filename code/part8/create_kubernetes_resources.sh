$ kubectl create -f hello-sql-frontend-deployment.yaml
deployment.apps/hello-sql-frontend created

$ kubectl create -f hello-sql-frontend-service.yaml 
service/hello-sql-frontend created

$ kubectl create -f hello-sql-mysql-deployment.yaml
deployment.apps/hello-sql-mysql created

$ kubectl create -f hello-sql-mysql-service.yaml
service/hello-sql-mysql created