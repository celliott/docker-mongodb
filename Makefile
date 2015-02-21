# Makefile for docker-mongodb

# docker settings
MONGODB_PORT ?= 27017
ENVS = 
PORTS = -p $(AUTH_TOKEN):27017
CONTAINER = mongodb
VOLUMES = -v /data/db:/data/db

.PHONY: container run

container :
	docker build -t $(CONTAINER) .

run :
	docker run --name $(CONTAINER) --restart=always -i -d $(PORTS) $(ENVS) $(VOLUMES)  -t $(CONTAINER)
stop :
	docker stop $(CONTAINER)
	docker rm $(CONTAINER)
kill :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)
restart :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)
	docker run --name $(CONTAINER) --restart=always -i -d $(PORTS) $(ENVS) $(VOLUMES)  -t $(CONTAINER)
attach:
	docker attach $(CONTAINER)

tail:
	docker logs -f $(CONTAINER)
