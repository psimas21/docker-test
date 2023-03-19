setup:
	@make build
	@make up 
	@make composer-update
build:
	docker-compose build --no-cache --force-rm
status:
	docker-compose ps
stop:
	docker-compose stop
up:
	docker-compose up -d --remove-orphans
composer-update:
	docker exec laravel-docker bash -c "composer update"
data:
	docker exec docker-test-php-1 bash -c "php artisan migrate"
	# docker exec laravel-docker bash -c "php artisan db:seed"
data-fresh:
	docker exec docker-test-php-1 bash -c "php artisan migrate:fresh"