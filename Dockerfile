FROM golang:alpine
RUN mkdir /app
COPY . /app
WORKDIR /app/src
RUN go env -w GO111MODULE=off
RUN go build -o main .
CMD ["/app/src/main"]