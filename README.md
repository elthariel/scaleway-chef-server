Hello-World image on Scaleway [![Build Status](https://travis-ci.org/scaleway/image-helloworld.svg?branch=master)](https://travis-ci.org/scaleway/image-helloworld)
=============================

Scripts to build the Hello-World image on Scaleway

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on the official [Ubuntu](https://github.com/scaleway/image-ubuntu) image.

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-tools)

---

Install
-------

Build and write the image to `/dev/nbd1` (see [documentation](https://www.scaleway.com/docs/create-an-image-with-docker/))

    $ make install

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/#commands)
