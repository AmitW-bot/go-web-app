FROM golang:1.22.5-alpine AS builder
WORKDIR /app
COPY go.mod /app
RUN go mod download
COPY . .
RUN  go build -o go-web-app-binary .

FROM alpine:3.23.0
WORKDIR /app
COPY --from=builder /app/go-web-app-binary /app
COPY static /app/static/
EXPOSE 1234
CMD [ "./go-web-app-binary" ]


