REGISTRY ?= docker.io
NAME := mcsp/simple-upload-server
VERSION := v1.3

BUILD_TAG := $(REGISTRY)/$(NAME):$(VERSION)

docker-build:
	docker buildx build \
		--tag $(BUILD_TAG) \
		--push \
		--platform linux/amd64,linux/arm64 .

docker-push: docker-build
	docker push $(BUILD_TAG)