all: build push
.PHONY: build push test

TAG = 5.4.0

DOCKER_REGISTRY = index.tenxcloud.com/jimmy

build:
	docker build -t $(DOCKER_REGISTRY)/filebeat:$(TAG) .

push: 
	docker push $(DOCKER_REGISTRY)/filebeat:$(TAG)

clean:
	docker rm -f test 

test:
	docker run --name test -d index.tenxcloud.com/jimmy/filebeat:5.4.0
	docker ps -a|grep test
	docker logs test
