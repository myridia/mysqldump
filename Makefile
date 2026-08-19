.PHONY: api

build:
	DOCKER_BUILDKIT=0 docker build -t myridia/mysqldump:latest .

default: build
