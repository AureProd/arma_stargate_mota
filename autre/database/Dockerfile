FROM mariadb:10.3.35

COPY ./BDD.sql /docker-entrypoint-initdb.d/bdd.sql

RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/