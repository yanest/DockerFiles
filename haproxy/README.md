# Supported tags and respective `Dockerfile` links

-	[`1.4.26`, `1.4` (*1.4/Dockerfile*)](https://github.com/docker-library/haproxy/blob/e06675f0670414932e659db5ba8f98f8a430a1d1/1.4/Dockerfile)
-	[`1.5.14`, `1.5`, `1`, `latest` (*1.5/Dockerfile*)](https://github.com/docker-library/haproxy/blob/ba0dc92fc368edb8e1f4928662316435fe782348/1.5/Dockerfile)

For more information about this image and its history, please see the [relevant manifest file (`library/haproxy`)](https://github.com/docker-library/official-images/blob/master/library/haproxy) in the [`docker-library/official-images` GitHub repo](https://github.com/docker-library/official-images).

# What is HAProxy?

HAProxy is a free, open source high availability solution, providing load balancing and proxying for TCP and HTTP-based applications by spreading requests across multiple servers. It is written in C and has a reputation for being fast and efficient (in terms of processor and memory usage).

> [wikipedia.org/wiki/HAProxy](https://en.wikipedia.org/wiki/HAProxy)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/haproxy/logo.png)

# How to use this image

Since no two users of HAProxy are likely to configure it exactly alike, this image does not come with any default configuration.

Please refer to [upstream's excellent (and comprehensive) documentation](https://cbonte.github.io/haproxy-dconv/) on the subject of configuring HAProxy for your needs.

It is also worth checking out the [`examples/` directory from upstream](http://www.haproxy.org/git?p=haproxy-1.5.git;a=tree;f=examples).

Note: Many configuration examples propose to put `daemon` into the `global` section to run haproxy as daemon. Do **not** configure this or the Docker container will exit immediately after launching because the haproxy process would go into the background.

## Create a `Dockerfile`

	FROM haproxy:1.5
	COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

Build and run:

	docker build -t my-haproxy .
	docker run -d --name my-running-haproxy my-haproxy

## Directly via bind mount

	docker run -d --name my-running-haproxy -v /path/to/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro haproxy:1.5

# License

View [license information](http://www.haproxy.org/download/1.5/doc/LICENSE) for the software contained in this image.

# Supported Docker versions

This image is officially supported on Docker version 1.7.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# User Feedback

## Documentation

Documentation for this image is stored in the [`haproxy/` directory](https://github.com/docker-library/docs/tree/master/haproxy) of the [`docker-library/docs` GitHub repo](https://github.com/docker-library/docs). Be sure to familiarize yourself with the [repository's `README.md` file](https://github.com/docker-library/docs/blob/master/README.md) before attempting a pull request.

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/docker-library/haproxy/issues).

You can also reach many of the official image maintainers via the `#docker-library` IRC channel on [Freenode](https://freenode.net).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/docker-library/haproxy/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
