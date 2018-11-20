FROM golang:alpine
WORKDIR /hello-sql
ADD ./hello-sql.go /hello-sql
RUN apk add --no-cache git
RUN go get -d -v
RUN CGO_ENABLED=0 GOOS=linux go build -o /go/bin/hello-sql
ENTRYPOINT ["/go/bin/hello-sql"]                                                                                                                                                                                                              
