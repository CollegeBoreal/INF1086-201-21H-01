# Jeu d'essai

Le but de l'activité cinsiste à créeer un jeu d'essai permettant de manipuler l'environnement Kafka


SET 'auto.offset.reset' = 'earliest';




### 3. Accedez a votre bash de Kafka

```
$ docker-compose exec kafka bash 
```

### 4. Création des topics

* Bus Schedule

```
root@kafka:/# kafka-topics --zookeeper zookeeper:32181 --topic bus-sched --create --partitions 3 --replication-factor 1
```

* Bus Events

```
root@kafka:/# kafka-topics --zookeeper zookeeper:32181 --topic bus-events --create --partitions 3 --replication-factor 1
```




### Creation d'un nouveau Stream :

* Ouvrir KSQL CLI :

```
$ docker-compose exec ksql-cli ksql http://ksql-server:8088 
```


* Creer un nouveau stream du topic bus-sched

```
ksql> CREATE STREAM BUS_SCHEDULE (ROUTE_ID INTEGER, \
                           STOP_NUM INTEGER, \
                           ETA BIGINT) \
                     WITH (VALUE_FORMAT='JSON', \
                           KAFKA_TOPIC='bus-sched', \
                          KEY='STOP_NUM');
```

```
ksql> SELECT ROUTE_ID, STOP_NUM, TIMESTAMPTOSTRING(ETA, 'yyyy-MM-dd  HH:mm:ss') FROM BUS_SCHEDULE;
```

* Creer un nouveau Stream du topic bus-events

```
ksql> CREATE STREAM BUS_EVENTS (BUS_ID INTEGER, \
                          ROUTE_ID INTEGER, \
                          TIMESTAMP BIGINT, \
                          LAST_STOP INTEGER) \
                    WITH (VALUE_FORMAT='JSON', \
                          KAFKA_TOPIC='bus-events');
```

```
ksql> SELECT BUS_ID, ROUTE_ID, TIMESTAMPTOSTRING(TIMESTAMP, 'yyyy-MM-dd  HH:mm:ss'), LAST_STOP FROM BUS_EVENTS;
1 | 6 | 2019-03-21  14:00:10 | 925
1 | 6 | 2019-03-22  00:00:10 | 266
1 | 6 | 2019-03-22  01:00:10 | 925
1 | 6 | 2019-03-22  02:00:10 | 925
1 | 6 | 2019-03-21  15:00:10 | 925
1 | 6 | 2019-03-21  16:01:40 | 925
1 | 6 | 2019-03-21  18:00:10 | 925
1 | 6 | 2019-03-21  18:00:10 | 925
1 | 6 | 2019-03-21  19:00:10 | 925
1 | 6 | 2019-03-21  20:00:10 | 268
1 | 6 | 2019-03-21  21:00:10 | 925
1 | 6 | 2019-03-21  23:00:10 | 925
```

```
ksql> CREATE STREAM BUS_EVENTS_WITH_KEY \
          WITH (VALUE_FORMAT='AVRO', \
                KAFKA_TOPIC='bus-events-with-key') AS \
          SELECT BUS_ID, CAST(ROUTE_ID AS STRING) AS ID, TIMESTAMP, LAST_STOP \
                FROM BUS_EVENTS PARTITION BY ID;
```

```
ksql> PRINT 'bus-events-with-key' FROM BEGINNING;
Format:AVRO
3/21/19 10:30:39 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553176810000, "LAST_STOP": 925}
3/21/19 10:30:40 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553212810000, "LAST_STOP": 266}
3/21/19 10:30:44 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553220010000, "LAST_STOP": 925}
3/21/19 10:30:46 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553180410000, "LAST_STOP": 925}
3/21/19 10:30:47 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553184100000, "LAST_STOP": 925}
3/21/19 10:30:53 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553194810000, "LAST_STOP": 925}
3/21/19 10:30:55 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553198410000, "LAST_STOP": 268}
3/21/19 10:30:57 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553202010000, "LAST_STOP": 925}
3/21/19 11:21:41 PM UTC, 6, {"BUS_ID": 1, "ID": "6", "TIMESTAMP": 1553212810000, "LAST_STOP": 266}
```

```
ksql> CREATE TABLE BUS_EVENTS_TABLE \
                     WITH (VALUE_FORMAT='AVRO', \
                           KAFKA_TOPIC='bus-events-with-key', \
                          KEY='ID');
```

```
ksql> select * from BUS_EVENTS_TABLE;
1553203821628 | 6 | 1 | 6 | 1553176810000 | 925
1553203823487 | 6 | 1 | 6 | 1553212810000 | 266
1553203827188 | 6 | 1 | 6 | 1553220010000 | 925
```

```
ksql> SELECT BUS_ID, ID, TIMESTAMPTOSTRING(TIMESTAMP, 'yyyy-MM-dd  HH:mm:ss'), LAST_STOP FROM BUS_EVENTS_TABLE;
```

### Afficher le topic du debut en KSQL

```
ksql> PRINT 'bus-events' FROM BEGINNING;
```

----------

### 5. Accedez a votre bash de Kafka

```
$ docker-compose exec kafka bash 
```

### 6. Accedez a votre bash de Kafka

```
$ kafka-console-consumer --bootstrap-server kafka:9092 --topic bus-sched --from-beginning
{ "ROUTE_ID" :  6 , "STOP_NUM" : 266 , "ETA" : 1553216400000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 925 , "ETA" : 1553220000000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 256 , "ETA" : 1553191200000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 231 , "ETA" : 1553194800000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 243 , "ETA" : 1553202000000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 15128 , "ETA" : 1553176800000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 1467 , "ETA" : 1553184000000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 247 , "ETA" : 1553187600000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 261 , "ETA" : 1553198400000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 268 , "ETA" : 1553212800000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 15129 , "ETA" : 1553180400000 }
{ "ROUTE_ID" :  6 , "STOP_NUM" : 238 , "ETA" : 1553209200000 }
```

----------


https://docs.confluent.io/current/ksql/docs/developer-guide/syntax-reference.html#tables



## Load files (kafka-console-producer)
Essayer avec la commande kafka-console-producer et `cat:

```
$ cat ~/my_file.json | docker exec \
                   --interactive kafka kafka-console-producer \
                   --broker-list kafka:9092 --topic my_topic
```

Références: 

[KafkaCat](CAT.md)
