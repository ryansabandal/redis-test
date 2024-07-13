FROM redhat/ubi8

LABEL name="redis-haproxy" 

RUN yum -y update && \
    yum -y install redis && \
    yum clean all

COPY configs/redis/redis.conf /appl/redis-haproxy/redis/redis.conf
EXPOSE 6379 80 443

CMD ["redis-server"]
