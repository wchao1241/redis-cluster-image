FROM harbor.frognew.com/rg/alpine-glibc:0.1

RUN apk add --no-cache redis sed bash

COPY redis-master.conf /redis-master/redis.conf
COPY redis-slave.conf /redis-slave/redis.conf
COPY run.sh /run.sh
RUN chmod u+x /run.sh
CMD [ "/run.sh" ]

ENTRYPOINT [ "bash", "-c" ]