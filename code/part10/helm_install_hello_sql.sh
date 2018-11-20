$ helm install .
NAME:   dealing-lightningbug                                                                                                                                                                            [0/3787]
LAST DEPLOYED: Tue Nov 20 11:25:12 2018
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1beta1/Deployment
NAME                        DESIRED  CURRENT  UP-TO-DATE  AVAILABLE  AGE
dealing-lightningbug-mysql  1        1        1           0          0s
==> v1/Pod(related)
NAME                                             READY  STATUS             RESTARTS  AGE
dealing-lightningbug-mysql-6fb96cff6d-d6tq6      0/1    Init:0/1           0         0s
dealing-lightningbug-hello-sql-695fc8c7dc-ndn9p  0/1    ContainerCreating  0         0s
==> v1/Service
NAME                            TYPE       CLUSTER-IP      EXTERNAL-IP  PORT(S)   AGE
dealing-lightningbug-mysql      ClusterIP  10.107.179.147  <none>       3306/TCP  0s
dealing-lightningbug-hello-sql  ClusterIP  10.108.249.150  <none>       8080/TCP  0s
...

NOTES:
1. Get the application URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l "app=hello-sql,release=dealing-lightningbug" -o jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl port-forward $POD_NAME 8080:8080
