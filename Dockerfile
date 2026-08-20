FROM alpine:latest
RUN apk add --no-cache mariadb-client
ENTRYPOINT ["/usr/bin/mariadb-dump"]
