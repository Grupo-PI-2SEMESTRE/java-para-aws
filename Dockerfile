FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=urubu100

COPY ./script-mysql.sql /docker-entrypoint-initdb.d/



