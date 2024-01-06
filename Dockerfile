FROM jenkins/agent:latest-alpine
USER root
RUN apk update && apk add alpine-sdk
USER jenkins