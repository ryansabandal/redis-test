FROM alpine:latest

LABEL name="redis-haproxy" 

RUN apk update && \
    apk add --no-cache redis && \
    rm -rf /var/cache/apk/*

COPY configs/redis/redis.conf /etc/redis/redis.conf
EXPOSE 6379

CMD ["redis-server", "/etc/redis/redis.conf"]
