.PHONY: all build clean run

all: | build clean

build: rootfs
	docker build -t kovagoz/mongo:latest .

rootfs:
	mkdir -p rootfs/{lib,sbin}
	docker run --rm -i -v $(PWD)/rootfs:/data centos:latest < prepare.sh

clean:
	rm -rf rootfs

run:
	docker run --rm -p 27017:27017 kovagoz/mongo:latest
