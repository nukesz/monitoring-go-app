FROM golang:1.12-stretch as builder
COPY . /monitor-go-app
WORKDIR /monitor-go-app
ENV GO111MODULE=on
RUN CGO_ENABLED=0 GOOS=linux go build -o monitor-go-app

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /monitor-go-app .
CMD ["./monitor-go-app"]