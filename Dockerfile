FROM jenkins/agent:latest-alpine
USER root
RUN apk update && apk add autoconf automake libtool m4 pcre2-dev pkgconfig
USER jenkins