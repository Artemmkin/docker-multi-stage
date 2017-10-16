FROM golang:1.9.1 as builder
WORKDIR /go-builder/
COPY hello-world.go .
RUN CGO_ENABLED=0 GOOS=linux go build -o hello-world .

FROM alpine:latest
COPY --from=builder /go-builder/hello-world .
CMD ["./hello-world"]
