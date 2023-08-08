.PHONY: help
.SILENT:
container ?= null
projectpath ?= null
nodeversion ?= ""
nvmaction ?= null
npmcommand ?= ""

help:
	@optimize 'asd'
optimize:
	docker exec $(container) bash -c "cd /var/www/html/$(projectpath);php artisan optimize:clear;"
permissions:
	docker exec $(container) bash -c 'cd /var/www/html/$(projectpath);chown www-data:www-data storage storage/* storage/framework/* storage/framework/cache/* bootstrap/*;'
nvmexec:
	docker exec -it c_nvm bash -l -c \
		"cd /var/www/html/$(projectpath); \
		nvm exec ${nodeversion} ${npmcommand}"; 