VERSION := $(shell date +%Y%m%d%H%M%S)
TAG = quay.io/nesv/taiga-back

all:
	docker build --rm --tag="${TAG}:${VERSION}" .
	@echo "${TAG}:${VERSION}" >> last-built-version
	docker tag --force ${TAG}:${VERSION} ${TAG}:latest

clean: last-built-version
	docker rmi $(shell cat $^)
	rm -f $^

.PHONY: clean
