FROM ubuntu:latest

WORKDIR /app

RUN apt update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata && apt install nodejs npm wget -y
RUN  wget https://github.com/Requarks/wiki/releases/download/2.5.126/wiki-js.tar.gz
RUN mkdir wiki
RUN tar xzf wiki-js.tar.gz -C ./wiki

WORKDIR ./wiki

RUN rm config.sample.yml
COPY config.yml .
COPY  entrypoint.sh .
RUN  chmod +x entrypoint.sh

ENTRYPOINT /app/wiki/entrypoint.sh
CMD ["node","server"]

