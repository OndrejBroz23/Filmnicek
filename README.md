git clone https://github.com/OndrejBroz23/Filmnicek.git
cd Filmnicek

docker-compose up -d --build
docker-compose exec backend composer install
docker-compose exec frontend npm install
docker-compose exec backend php bin/console doctrine:migrations:migrate --no-interaction


věci pro symfony db
php bin/console make:entity (tvorba tabulek)

php bin/console make:migration (příprava změn)

php bin/console doctrine:migrations:migrate (zápis do DB)

php bin/console make:controller (tvorba nových stránek/API)

symfony url
http://localhost:8000

front
http://localhost:5173
