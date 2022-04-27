FROM ubuntu:21.10
LABEL maintainer="lucas"

RUN apt-get update && apt-get install -y apache2 

COPY html/* /var/www/html/ # copie le dossier html du dossier ou se trouve le dockerfile dans le repertoire de l'image voulu

WORKDIR /var/www/html # se place dans le dossier - equivalent du cd en linux

CMD ["apachectl", "-D", "FOREGROUND"] # execute une commande

EXPOSE 80 