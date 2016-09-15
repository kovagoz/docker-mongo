Docker Mongo
============

MongoDB database in a tiny Docker container.

This image contains only the latest _mongod_ binary without the client and other CLI tools.

How to build?
-------------

Clone the repository and run the `make` command.

Make uses a CentOS container to extract the libraries needed by _mongod_.

Usage
-----

For testing purposes run the following command:

```sh
$ make run
```

A new mongo container will be started in the foreground and publish the port 27017 to the host system.

If you would like to run mongo in the background using another port, run a command like this:

```sh
$ docker run -d -p 5000:27017 kovagoz/mongo
```
