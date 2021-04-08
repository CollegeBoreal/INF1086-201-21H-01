# Installer Apache CASSANDRA avec Docker-compose.

🛩️ Au prealable installer Docker dans votre machine Engine dans votre ordinateur si vous ne l'avez pas encore fait.
Ensuite  crer un fichier docker-compose.yml que vous allez executer avec la composer :

``` 
docker-compose up --detach

```

votre fichier `docker-compose.yml` doit contenir les elements suivant :

```
version: '3'

services:
  cassandra:
    image: "cassandra:3.11.4"
    container_name: cassandra
    ports:
      - "9042:9042"
    volumes:
      - ./build/cassandra:/var/lib/cassandra
    healthcheck:
      test: ["CMD-SHELL", "[ $$(nodetool statusgossip) = running ]"]
      interval: 10s
      timeout: 5s
      retries: 50
      
```

