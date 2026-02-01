up:
	docker-compose up -d
down:
	docker-compose down
build:
	docker-compose up -d --build
symfony:
	docker-compose exec backend symfony console $(cmd)
bash:
	docker-compose exec backend bash