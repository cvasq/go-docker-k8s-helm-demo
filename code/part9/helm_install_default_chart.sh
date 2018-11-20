$ helm install .

NAME:   flippant-tortoise
LAST DEPLOYED: Tue Nov 20 08:43:57 2018
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Pod(related)
NAME                                          READY  STATUS             RESTARTS  AGE
flippant-tortoise-hello-sql-64877f5fd6-z72cg  0/1    ContainerCreating  0         0s
==> v1/Service
NAME                         TYPE       CLUSTER-IP     EXTERNAL-IP  PORT(S)  AGE
flippant-tortoise-hello-sql  ClusterIP  10.99.212.228  <none>       80/TCP   0s
==> v1beta2/Deployment
NAME                         DESIRED  CURRENT  UP-TO-DATE  AVAILABLE  AGE
flippant-tortoise-hello-sql  1        1        1           0          0s

NOTES:
1. Get the application URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l "app=hello-sql,release=flippant-tortoise" -o jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl port-forward $POD_NAME 8080:80