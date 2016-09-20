FROM shoyan/www-ci
ADD . /app
WORKDIR /app
ENV MYSQL_HOST mysql
ENV MYSQL_PASSWORD ''
