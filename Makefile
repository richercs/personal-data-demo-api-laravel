dev:
	@docker-compose down --remove-orphans && \
		docker-compose build --pull && \
		docker-compose -f docker-compose.yml up -d && \
		docker-compose exec php composer install
# 		echo "waiting 8 sec for db to be up and running" && \
# 		sleep 8 && \
#       TODO: check if db is up and run migrations to create schema

unit-test:
	@docker-compose -f docker-compose-test.yml down --remove-orphans && \
		docker-compose -f docker-compose-test.yml build --pull && \
		docker-compose -f docker-compose-test.yml up -d && \
		docker-compose exec php composer install
#		TODO: run tests

down:
	@docker-compose down --remove-orphans
