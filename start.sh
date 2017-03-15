docker-compose build
docker-compose run --rm ps_app rails db:create
docker-compose run --rm ps_app rails db:migrate
docker-compose up
