FROM golang:1.26rc2

WORKDIR /go/src/github.com/decred/dcrd
COPY . .

RUN env GO111MODULE=on go install . ./cmd/...

EXPOSE 9108

CMD [ "dcrd" ]
