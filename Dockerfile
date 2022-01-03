FROM mysql
COPY . .
EXPOSE 1433
RUN apt-get update && apt-get install -y wget
ENV sa_password=test
ENV ACCEPT_EULA=Y
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true

#ENTRYPOINT ["sh", "-c", "mysql -u sa -test my_databse < bdd.sql"]