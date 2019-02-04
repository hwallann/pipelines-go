FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app
RUN go env
RUN go get -d
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 80
