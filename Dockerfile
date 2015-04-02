## -*- docker-image-name: "armbuild/scw-example" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update && \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq cowsay


# Patch rootfs
ADD ./patches/ /


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
