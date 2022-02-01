FROM ubuntu
RUN apt-get update

## EXPOSE ##
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2
EXPOSE 80
RUN mkdir /datos1
ADD entrypoint.sh /datos1

## VOLUMES ##
ADD paginas /var/www/html
VOLUME ["/var/www/html"]

## CMD ##
CMD /datos1/entrypoint.sh