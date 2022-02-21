# Compile
FROM golang:1.17-alpine3.14 AS builder
WORKDIR /src/app/
COPY go.mod go.sum* ./
RUN go mod download
COPY . .
RUN for bin in cmd/*; do CGO_ENABLED=0 go build -o=/usr/local/bin/$(basename $bin) ./cmd/$(basename $bin); done

# Add alpine container
FROM alpine:3.14
COPY --from=builder /usr/local/bin/icad /usr/local/bin/icad
RUN adduser -h /icad -D -S -s /bin/bash -u 1000 icad 
USER icad
CMD ["icad", "start"]
