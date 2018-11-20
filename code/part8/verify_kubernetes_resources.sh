$ kubectl get service | grep sql

hello-sql-frontend           ClusterIP      10.97.90.5       <none>      8080/TCP            3m
hello-sql-mysql              ClusterIP      10.110.12.167    <none>      3306/TCP            3m

$ kubectl get pods | grep sql

hello-sql-frontend-d6f75b49b-5kxmc                            1/1       Running   0          5m
hello-sql-frontend-d6f75b49b-grdzj                            1/1       Running   0          5m
hello-sql-frontend-d6f75b49b-ss865                            1/1       Running   0          5m
hello-sql-mysql-689d568446-2hmnc                              1/1       Running   0          5m