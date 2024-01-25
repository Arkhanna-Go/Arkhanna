#!/bin/bash

server_up(){
	set -e
	sudo docker compose up -d
	sudo docker compose logs -f
}

server_restart(){
	set -e
	sudo docker compose down
	server_up
}

init_db(){
	set -e
	files=$(ls rathena/sql-files/*.sql)
	files+=$(ls rathena/sql-files/upgrades/*.sql)
	# TODO exec sql script files on remote server
}

eval $@
