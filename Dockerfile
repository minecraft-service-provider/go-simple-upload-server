FROM golang:1.19 AS build-env

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

# resolve dependency before copying whole source code
COPY go.mod .
COPY go.sum .
RUN go mod download

# copy other sources & build
COPY . /go/src/app
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o /go/bin/app

FROM alpine:3.17 AS runtime-env
COPY --from=build-env /go/bin/app /usr/local/bin/app
ENTRYPOINT ["/usr/local/bin/app"]