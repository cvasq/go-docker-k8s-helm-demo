# Multi-stage build

# Stage 1. Build application to static executable
FROM golang:alpine as builder
WORKDIR /hello-sql
ADD ./hello-sql.go /hello-sql
RUN apk add --no-cache git
RUN go get -d -v
RUN CGO_ENABLED=0 GOOS=linux go build -o /go/bin/hello-sql

# Stage 2. Copy our built static executable to a new container
# scratch is Docker’s reserved, minimal image
FROM scratch
COPY --from=builder /go/bin/hello-sql /go/bin/hello-sql
ENTRYPOINT ["/go/bin/hello-sql"]
