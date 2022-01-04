FROM mysql
EXPOSE 3306
RUN apt-get update && apt-get install -y wget

ADD init.sql /docker-entrypoint-initdb.d

ENV ACCEPT_EULA=Y
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
