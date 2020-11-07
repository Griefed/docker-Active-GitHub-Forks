FROM lsiobase/nginx:3.12

LABEL maintainer="Griefed <griefed@griefed.de>"

RUN \
    echo "**** Install dependencies, build tools and stuff ****" && \
    apk add --no-cache \
        git && \
    echo "**** Cleanup ****" && \
    rm -rf \
        /root/.cache \
        /tmp/*

COPY root/ /

EXPOSE 80 443

VOLUME /config