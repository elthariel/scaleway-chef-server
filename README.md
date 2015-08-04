# Hello-World image on Scaleway

[![Build Status](https://travis-ci.org/scaleway/image-helloworld.svg?branch=master)](https://travis-ci.org/scaleway/image-helloworld)

Scripts to build the **Hello-World** image on Scaleway.

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on the official [Ubuntu](https://github.com/scaleway/image-ubuntu) image.

See the [Building images on Scaleway with Docker](http://www.slideshare.net/manfredtouron/while42-paris13-scaleway) presentation on Slideshare.


---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-tools)

---

## Install

Build and write the image to `/dev/nbd1` (see [documentation](https://www.scaleway.com/docs/create-an-image-with-docker/))

```console
$ make install
```

## Commands

```bash
# Clone the hello world docker-based app on an armhf server with Docker
git clone https://github.com/scaleway/image-helloworld.git

# Build and run the image in Docker (for testing)
make shell

# Export and push the rootfs on s3 (requires `s3cmd`)
make publish_on_s3 S3_URL=s3://my-bucket/my-subdir/

# push the image on docker registry
make release DOCKER_NAMESPACE=myusername
```

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/#commands)

---

A project by [![Scaleway](https://avatars1.githubusercontent.com/u/5185491?v=3&s=42)](https://www.scaleway.com/)
