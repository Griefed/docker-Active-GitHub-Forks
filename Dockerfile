FROM httpd:alpine

LABEL   maintainer="Griefed <griefed@griefed.de>"
LABEL   description="Based on https://techgaun.github.io/active-forks/index.html & https://github.com/techgaun/active-forks \
This project allows you to find the most active forks of a repository."

WORKDIR /usr/local/apache2/htdocs

RUN     rm -R *

RUN     apk update && apk upgrade && apk add git                        && \
        git clone https://github.com/techgaun/active-forks.git .        && \
        apk del git

EXPOSE 80
