build:
	php app/console cache:clear
	php app/console doctrine:migrations:migrate --no-interaction
system:
	sudo puppet apply --modulepath=./system system.pp
	
.PHONY: system build