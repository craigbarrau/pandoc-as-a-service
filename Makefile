build:
	docker build -t craigbarrau/pandoc-as-a-service .

push:
	docker push craigbarrau/pandoc-as-a-service

run:
	docker run --name pandoc --rm -d -p 8080:8080 craigbarrau/pandoc-as-a-service

stop:
	docker rm -f pandoc