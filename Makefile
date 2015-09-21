NAME =			helloworld
VERSION =		1.2.3
VERSION_ALIASES =	1.2 1 latest
TITLE =			Example Image
DESCRIPTION =		An image with cowsay
SOURCE_URL =		https://github.com/scaleway/image-helloworld
VENDOR_URL =		http://hello.world/

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Hello World (v1.2 BETA)


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
