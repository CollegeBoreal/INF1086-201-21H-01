
## comment installer Apache CASSANDRA avec Docker-comp 

Apache Cassandra est un système de gestion de base de données de type NoSQL conçu pour gérer des quantités massives de données sur un grand nombre de serveurs, assurant une haute disponibilité en éliminant les points de défaillance unique.
vous devez installer Docker sur votre server Linux pour se tutoriel .

#Creez un fichier docker-compose.yml  en mettant les elements suivants dedans : 

version: '3'

services:
  cassandra:
    image: "cassandra:3.11.4"
    container_name: leguan_cassandra
    ports:
      - "9042:9042"
    volumes:
      - ./build/cassandra:/var/lib/cassandra
    healthcheck:
      test: ["CMD-SHELL", "[ $$(nodetool statusgossip) = running ]"]
      interval: 10s
      timeout: 5s
      retries: 50
      
# Nous allons installer Cassandra en utulisant Docker-compose sous Gitbash 
note : Vous pouvez utuliser le terminal de votre choix

#Commencons par verifier l'etat de votre docker machine :
