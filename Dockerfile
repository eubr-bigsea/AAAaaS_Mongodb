# Base image
FROM mongo:3.3

MAINTAINER Paulo Silva (pmgsilva@dei.uc.pt) University of Coimbra & Eduardo Morais (eduardo.morais@gmail.com)

RUN apt-get update && apt-get -y install nano bash apt-utils sudo lftp python3

#ADD ./data /data/db
#ADD ./certs /certs

VOLUME ["/data/db"]

EXPOSE 27017

RUN --smallfiles --rest

CMD mongod --port 27017 --dbpath /data/db

