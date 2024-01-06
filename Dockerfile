FROM alpine:latest

RUN apk update && apk add alpine-sdk

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins