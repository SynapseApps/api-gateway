build_docker_image:
	docker build -t hopcloud-gateway/v1.0.0 .

dev:
	docker run -p 8080:8080 -v "$(shell pwd):/hopcloud-gateway" hopcloud-gateway/v1.0.0

path:
	echo $(shell pwd)