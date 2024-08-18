FROM golang:1.22.0

RUN mkdir /app
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o /my_app
CMD ["/my_app"]