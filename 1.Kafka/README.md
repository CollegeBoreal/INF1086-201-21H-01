# Kafka


# :tada: [Participation](.scripts/Participation.md) 

## :o: Création de votre répertoire de travail dans `git bash`

### :one: Dans le répertoire `1.Kafka` Créer un répertoire avec comme nom, votre :id:

`$ mkdir ` :id:

### :two: Copier les fichiers se trouvant dans le repretoire `.src` dans votre répertoire

`$ cp -r .src/* `:id:` `

### :three: Envoyer vers github

* soumettre votre répertoire de travail vers github `(git add, commit, push)` 

## :a: Dans votre Serveur Linux du laboratoire

### :one: Créer une nouvelle machine virtuelle `CB-KAFKA` et `docker-compose`

:star: [Installer la VM CB-KAFKA](../K.Kafka/VM)


## :b: Créer les conteneurs `Kafka` sur le serveur Linux

### :one: Construire les images et démarrer les conteneurs avec `docker-compose`

- [ ]  Assurez vous que vous pointez sur la VM `CB-KAFKA`

:computer: Sous `PowerShell` uniquement

```
PS > docker-machine env CB-KAFKA | Invoke-Expression
```

:apple: Sous `bash`

```
$ eval $(docker-machine env CB-KAFKA)
```

- [ ] Vérifiez l'étoile dans la colonne `ACTIVE` 


```
$ docker-machine ls
NAME         ACTIVE   DRIVER   STATE     URL                      SWARM   DOCKER     ERRORS
CB-HYPERV    -        hyperv   Running   tcp://10.13.2.14:2376            v19.03.5
CB-HYPERV2   -        hyperv   Running   tcp://10.13.5.54:2376            v19.03.5
CB-KAFKA     *        hyperv   Running   tcp://10.13.4.228:2376           v19.03.5
```

:pushpin: Dans votre répertoire de travail, lancer les conteneurs

- [ ] lancer les conteneurs (prend quelques minutes)

```
$ docker-compose up --detach
...
...
...
Status: Downloaded newer image for confluentinc/cp-kafka-rest:5.4.0
Creating zookeeper ... done
Creating broker    ... done
Creating schema-registry ... done
Creating connect         ... done
Creating rest-proxy      ... done
Creating ksql-server     ... done
Creating ksql-cli        ... done
Creating ksql-datagen    ... done
```

## :two: Vérifier la santé des conteneurs

- [ ] Vérification


```
$ docker-compose ps
     Name                   Command                      State                      Ports
----------------------------------------------------------------------------------------------------
broker            /etc/confluent/docker/run      Up                      0.0.0.0:29092->29092/tcp, 0.0.0.0:9092->9092/tcp
connect           /etc/confluent/docker/run      Up (health: starting)   0.0.0.0:8083->8083/tcp, 9092/tcp
ksql-cli          /bin/sh                        Up
ksql-datagen      bash -c echo Waiting for K     Up
                  ...
ksql-server       /etc/confluent/docker/run      Up (healthy)            0.0.0.0:8088->8088/tcp
rest-proxy        /etc/confluent/docker/run      Up                      0.0.0.0:8082->8082/tcp
schema-registry   /etc/confluent/docker/run      Exit 1
zookeeper         /etc/confluent/docker/run      Up                      0.0.0.0:2181->2181/tcp, 2888/tcp, 3888/tcp
```

- [ ] Si un conteneur n'est pas `up`, relancer la commande


```
$ docker-compose up --detach
```

- [ ] Voir le log (trace) du broker avoir la commande suivante (CTRL-C pour arreter)

```
$ docker-compose logs --follow broker
```

## :ab: Se connecter au `broker` Kafka

:bulb: Dans une autre fenetre Powershell

- [ ]  par <b>docker</b> `exec`

```
$ docker container exec --interactive --tty broker bash
```

ou plus simplement 

- [ ]  par <b>docker-compose</b> `exec`


```
$ docker-compose exec broker bash
```

## :desktop_computer: Kafka Broker CLI

- [ ] Dans le `broker` conteneur, créer un topic appellé `first_topic`

```
root@broker:/# kafka-topics --zookeeper zookeeper:2181 \
                            --create --replication-factor 1 --partitions 1 --topic first_topic
WARNING: Due to limitations in metric names, topics with a period ('.') or underscore ('_') could collide. 
To avoid issues it is best to use either, but not both.
Created topic first_topic.
```
- [ ]  Liste des `topics` 

```
root@broker:/# kafka-topics --zookeeper zookeeper:2181 --list
__confluent.support.metrics
__consumer_offsets
_confluent-ksql-default__command_topic
_schemas
docker-connect-configs
docker-connect-offsets
docker-connect-status
first_topic
```

- [ ] Utiliser la console du producteur 

```
root@broker:/#  kafka-console-producer --broker-list broker:9092 --topic first_topic
> Bonjour la bas
> ^C
```

- [ ] Dans un autre terminal, utiliser la console du consommateur

:warning: N'oubliez pas de pointer vers votre VM `docker-machine` et de vous connecter avec `docker-compose`

```
root@broker:/#  kafka-console-consumer --bootstrap-server broker:9092 --topic first_topic 
Bonjour la bas
^C
```

# :eight_pointed_black_star:  Suivre le cours en ligne

https://www.linkedin.com/learning/learn-apache-kafka-for-beginners

:m: Visionnez en particulier:

- [ ] 1. Kafka Theory

- [ ] 3. Command Line Interface (CLI) 101


