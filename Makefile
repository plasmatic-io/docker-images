.PHONY: laravel-php-fpm laravel-nginx apollo-rover

REPOSITORY=323798788381.dkr.ecr.eu-central-1.amazonaws.com

laravel-php-fpm:
	@echo "=== Building Laravel PHP 8.1 FPM Image ==="
	docker build -t "${REPOSITORY}/progresus-laravel-php:8.1.0-fpm" -f laravel-php/8.1/fpm/Dockerfile laravel-php/8.1/fpm
	docker push "${REPOSITORY}/progresus-laravel-php:8.1.0-fpm"

laravel-nginx:
	@echo "=== Building Laravel NGINX Image ==="
	docker build -t "${REPOSITORY}/progresus-laravel-nginx:latest" -f laravel-nginx/alpine/Dockerfile laravel-nginx/alpine
	docker push "${REPOSITORY}/progresus-laravel-nginx:latest"

apollo-rover:
	@echo "=== Building Apollo Rover Image ==="
	docker build -t "${REPOSITORY}/progresus-apollo-rover:latest" -f apollo-rover/node/Dockerfile apollo-rover/node
	docker push "${REPOSITORY}/progresus-apollo-rover:latest"
