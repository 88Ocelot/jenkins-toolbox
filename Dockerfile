FROM jenkins/jenkins:alpine
USER root
RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
RUN apk update
RUN apk add --no-cache terraform@community python3 docker-cli@community && \
    apk add --no-cache --virtual .docker-compose-deps python3-dev libffi-dev openssl-dev gcc libc-dev make py-pip && \
    pip install docker-compose --no-cache-dir
RUN addgroup docker && addgroup jenkins docker
RUN apk del .docker-compose-deps
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
