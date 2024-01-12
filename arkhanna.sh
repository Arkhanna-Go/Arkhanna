#!/bin/bash

server_up(){
	set -e
	sudo docker compose up -d
	sudo docker compose logs -f
}

eval $@
