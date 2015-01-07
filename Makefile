all: docker

docker:
	sudo docker build --rm -t momframe .


.PHONE: all docker
