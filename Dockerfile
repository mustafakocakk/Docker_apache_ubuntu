from ubuntu:latest


MAINTAINER AKOCAK <altiakocak@gmail.com>

RUN apt-get update && apt-get install -y apache2

RUN rm -rf /var/www/html/index.html

WORKDIR /var/www

ADD [ "./index.html", "html/" ]

EXPOSE 80

ENTRYPOINT apachectl  -D FOREGROUND


