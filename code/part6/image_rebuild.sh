$ docker build -t verifi/hello-sql:cvasquez .

Sending build context to Docker daemon   5.12kB
Step 1/9 : FROM golang:alpine as builder
 ---> 57915f96905a
Step 2/9 : WORKDIR /hello-sql
<omitted>
Step 7/9 : FROM scratch
Step 8/9 : COPY --from=builder /go/bin/hello-sql /go/bin/hello-sql
 ---> 054e2bf762da
Step 9/9 : ENTRYPOINT ["/go/bin/hello-sql"]
 ---> e93c7aa888c9

Successfully built e93c7aa888c9
Successfully tagged verifi/hello-sql:cvasquez