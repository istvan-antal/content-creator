build:

system:
	sudo puppet apply --modulepath=./system system.pp
	
.PHONY: system build