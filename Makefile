all: build run

data:
	@if [ ! -d "home/clima-fr/data/mariadb" ] && [ ! -d "home/clima-fr/data/wordpress;" ]; then \
	mkdir -p home/clima-fr/data/mariadb && mkdir -p home/clima-fr/data/wordpress; fi

build: data
	docker compose -f srcs/docker-compose.yml build

run:
	docker compose -f srcs/docker-compose.yml up -d

status:
	$(eval service=$(filter-out $@,$(MAKECMDGOALS)))
	docker compose -f srcs/docker-compose.yml logs $(service)

stop:
	docker compose -f srcs/docker-compose.yml down

iclean:
	docker compose -f srcs/docker-compose.yml down --rmi all

vclean:
	docker compose -f srcs/docker-compose.yml down --rmi all -v
	@sudo rm -rf home

fclean: vclean
	docker system prune -af

dls:
	docker ps -a

vls:
	docker volume ls

ils:
	docker image ls

.SILENT: