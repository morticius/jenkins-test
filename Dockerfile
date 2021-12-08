FROM golang:1.17.4

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o test-grule

ENTRYPOINT ["./test-grule"]