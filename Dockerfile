# Create build stage based on buster image
FROM golang:alpine
# Create working directory under /app
WORKDIR "/app"
# Install any required modules
#RUN go mod download
# Copy over Go source code
COPY hello.go /app/hello.go
RUN go build hello.go
# Run the Go build and output binary under hello_go_http
# Make sure to expose the port the HTTP server is using
EXPOSE 8082
# Run the app binary when we run the container
ENTRYPOINT ["./hello"]
