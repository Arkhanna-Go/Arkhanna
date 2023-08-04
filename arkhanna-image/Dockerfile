FROM nginx:latest

RUN apt update
RUN apt install -y mariadb-client mariadb-client-core

COPY conf /app/conf
