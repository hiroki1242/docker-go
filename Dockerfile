# --------Build Stage--------
FROM golang:1.22.1-alpine3.19 AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o mainapp ./app/main.go

# --------Run Stage--------
FROM alpine:3.19.1

WORKDIR /app

COPY --from=builder /app/mainapp .

EXPOSE 8080

CMD ["./mainapp"]
