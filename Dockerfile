# Inherit from the Ubuntu Trusty image by Scaleway.
#   This image contains some Scaleway specific scripts
#   See https://github.com/scaleway/image-ubuntu/blob/master/14.04/Dockerfile

FROM scaleway/ubuntu:armhf-xenial
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
#
# Those are not supported yet, but could be as there are official
# package for them
#FROM scaleway/ubuntu:amd64-xenial       # arch=amd64
#FROM scaleway/ubuntu:i386-xenial        # arch=i386
MAINTAINER Julien 'Lta BALET' <contact@lta.io> (@find_lta)


# Prepare rootfs for image-builder.
#   This script prevent aptitude to run services when installed
RUN /usr/local/sbin/builder-enter

# Install packages
RUN apt-get -q update && \
    apt-get -y -qq upgrade && \
    wget -q 'https://github.com/elthariel/chef-server/releases/download/v12.5.0-arm-alpha/chef-server-core_12.9.1.20161020161349-1_armhf.deb' -O /tmp/chef-server-core_12.9.1.deb && \
    dpkg -i /tmp/chef-server-core_12.9.1.deb

# Add local files from the patches directory
COPY ./patches /

# Let's configure the chef-server, it takes a *while*
RUN private-chef-ctl reconfigure && private-chef-ctl restart

# Clean rootfs from image-builder.
#   Revert the builder-enter script
RUN /usr/local/sbin/builder-leave
