FROM golang:1.23-alpine3.21

# copy entrypoint file
COPY entrypoint.go /usr/bin/entrypoint.go

# change mode of the entrypoint file
RUN chmod +x /usr/bin/entrypoint.go

# set entrypoint command
ENTRYPOINT [ "go", "run", "/usr/bin/entrypoint.go" ]
