DOCKER_IMAGE ?= proxysql
VERSION      ?= $(shell git describe --tags)

.PHONY: release 

release: 
	docker build . --file ./2.0/Dockerfile -t $(DOCKER_IMAGE)
	docker tag $(DOCKER_IMAGE):latest yudjinyu/$(DOCKER_IMAGE):${VERSION}
	docker push yudjinyu/$(DOCKER_IMAGE):${VERSION}
