IMAGE := gcr.io/incentro-oss/covid19
TAG := 1.0

build:
	docker build -t ${IMAGE}:${TAG} .

run:
	docker run ${IMAGE}:${TAG}

push:
	docker push ${IMAGE}:${TAG}