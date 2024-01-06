FROM python:bookworm

RUN apt-get update && apt-get install -y build-essential

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins