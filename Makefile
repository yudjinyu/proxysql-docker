DOCKER_IMAGE ?= proxysql
VERSION      ?= $(shell git describe --tags)

.PHONY: release 

release: 
	docker tag $(DOCKER_IMAGE):${VERSION} yudjinyu/$(DOCKER_IMAGE):${VERSION}
	docker push yudjinyu/$(DOCKER_IMAGE):${VERSION}
