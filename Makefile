up-f:
	docker-compose up --build --no-recreate -d
up:
	docker-compose up -d
stop:
	docker-compose stop
run:
	docker exec -it health-insurance sh -c "npm i && npm run dev"
build:
	docker exec -it health-insurance sh -c "npm run build"
p:
	docker exec -it health-insurance sh -c "chmod -R 757 src"
	chmod -R 757 ./vue-app/src
push:
	git push -u origin master