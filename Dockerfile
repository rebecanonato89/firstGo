FROM golang:alpine

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY app .

RUN go build -o main .

CMD ["./main"]
