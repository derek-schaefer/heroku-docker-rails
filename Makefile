IMAGE=heroku-docker-rails/web:latest
REGISTRY=registry.heroku.com

build:
	docker build -t $(IMAGE) .

push: build
	docker tag $(IMAGE) $(REGISTRY)/$(IMAGE)
	docker push $(REGISTRY)/$(IMAGE)
