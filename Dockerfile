FROM busybox:glibc

ADD /rootfs/lib/* /lib/
ADD /rootfs/sbin/ /sbin

RUN chmod +x /sbin/mongod && mkdir -p /data/db

ENTRYPOINT ["/sbin/mongod"]

EXPOSE 27017
