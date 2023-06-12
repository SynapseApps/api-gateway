build_docker_image:
	docker build -t hopcloud-gateway/v1.0.0 .

build_minikube_image:
	minikube image build -t hopcloud-gateway/v1.0.0 .

dev:
	docker run -p 8080:8080 -v "$(shell pwd):/hopcloud-gateway" hopcloud-gateway/v1.0.0

deploy:
	kubectl apply -f dev-deployment.yaml

deploy_service:
	kubectl apply -f dev-service.yaml
