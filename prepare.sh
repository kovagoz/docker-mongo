set -ex
curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.2.9.tgz
tar xzOf mongodb-linux-x86_64-3.2.9.tgz mongodb-linux-x86_64-3.2.9/bin/mongod > /data/sbin/mongod
ldd /data/sbin/mongod | awk '{ print $1 }' | grep -v vdso | xargs -I {} basename {} | xargs -I {} cp /lib64/{} /data/lib
