NAME =			chef-server
VERSION =		12.9.1
VERSION_ALIASES =	12.9.1 12 latest
TITLE =			Chef Server
DESCRIPTION =		An image with chef-server installed and ready to be used
SOURCE_URL =		https://github.com/elthariel/scaleway-chef-server
VENDOR_URL =		http://chef.io

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Chef Server 12.9.1


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
