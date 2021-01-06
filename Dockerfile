FROM ubuntu:18.04
LABEL maintainer="Andrii Berkovskyy"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install apache2 -y
VOLUME /var/www/html
COPY index.html /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
