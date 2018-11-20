$ kubectl logs hello-sql-frontend-d6f75b49b-5kxmc
2018/11/20 05:11:09 Starting server on port: 8080

$ kubectl describe deployment hello-sql-frontend
Name:                   hello-sql-frontend
Namespace:              default
CreationTimestamp:      Mon, 19 Nov 2018 21:11:08 -0800
Labels:                 app=hello-sql
                        tier=frontend
Annotations:            deployment.kubernetes.io/revision=1
Selector:               app=hello-sql,tier=frontend
                        ...

$ kubectl describe service hello-sql-frontend
Name:              hello-sql-frontend
Namespace:         default
Labels:            <none>
Selector:          app=hello-sql,tier=frontend
Type:              ClusterIP
IP:                10.97.90.5
Port:              <unset>  8080/TCP
TargetPort:        8080/TCP
Endpoints:         10.1.1.24:8080,10.1.1.25:8080,10.1.1.26:8080
Session Affinity:  None
Events:            <none>