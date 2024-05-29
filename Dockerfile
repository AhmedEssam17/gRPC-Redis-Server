FROM golang:latest

WORKDIR /app

RUN git clone https://github.com/AhmedEssam17/gRPC-Redis-Server.git

WORKDIR /app/gRPC-Redis-Server/server

RUN go mod download \
    && go build -o server .

EXPOSE 8888

CMD ["./server"]
