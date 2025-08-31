.PHONY: build push

build:
	docker build --platform=linux/amd64 -t docker-image-registry.carlschilz.me:5011/autoremove-torrents:latest-amd64 .
	docker build --platform=linux/arm64/v8 -t docker-image-registry.carlschilz.me:5011/autoremove-torrents:latest-arm64 .
push:
	docker push docker-image-registry.carlschilz.me:5011/autoremove-torrents:latest-amd64
	#docker push docker-image-registry.carlschilz.me:5011/autoremove-torrents:latest-arm64