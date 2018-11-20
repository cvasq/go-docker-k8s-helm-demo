$ docker build -t verifi/hello-sql:cvasquez .
Sending build context to Docker daemon  6.144kB
Step 1/7 : FROM golang:alpine
 ---> 34d3217973fd
Step 2/7 : WORKDIR /hello-sql
<omitted>
Step 7/7 : ENTRYPOINT ["/go/bin/hello-sql"]
 ---> Using cache
 ---> baa17bfd9a06
Successfully built baa17bfd9a06
Successfully tagged verifi/hello-sql:cvasquez

