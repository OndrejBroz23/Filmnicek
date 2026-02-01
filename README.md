docker-compose up -d --build
docker-compose exec backend composer install
docker-compose exec frontend npm install
docker-compose exec backend php bin/console doctrine:migrations:migrate
