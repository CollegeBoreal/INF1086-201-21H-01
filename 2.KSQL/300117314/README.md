
## :o: vérifier le fichier stream.sql:

<img src=images/4.PNG  alt="alt text" width="750" height="400">

## :o: Comment exécuter KSQL:
```
 winpty docker-compose exec ksql-cli bash
 ksql http://ksql-server:8088
```

<img src=images/50.PNG  alt="alt text" width="750" height="500">

## :o: Montrer des topics:
```
SHOW TOPICS;
```

<img src=images/51.PNG  alt="alt text" width="750" height="500">

## :o: créer un stream nomé systemd:

```
CREATE STREAM systemd (
    host string,
    _SYSTEMD_UNIT VARCHAR,
    message string,
    timestamp VARCHAR
) WITH (
    kafka_topic = 'topic-journald',
    value_format = 'json',
    timestamp = 'timestamp',                        -- the column to use as a timestamp
    timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' -- the format to parse the timestamp
);
```


<img src=images/1.PNG  alt="alt text" width="750" height="400">


## :o: vérifier les champs de notre table:

```
 DESCRIBE systemd;
```

<img src=images/2.PNG  alt="alt text" width="750" height="400">

## :o: vérifier les données envoyées par vector et sauvegardées dans kafka serveur :
```
 SELECT * FROM systemd EMIT CHANGES LIMIT 10 ;
```

<img src=images/3.PNG  alt="alt text" width="750" height="400">

## :o: Créer la table morti:
```Mysql
CREATE TABLE morti 
AS SELECT MESSAGE, TIMESTAMP, HOST,
COUNT(*) AS COUNT FROM systemd 
GROUP BY MESSAGE, TIMESTAMP, HOST;

```
<img src=images/5.PNG  alt="alt text" width="950" height="250">

## :o: Extraire les données de la table morti:

```
SELECT * FROM morti
>EMIT CHANGES
>LIMIT 10;
```
<img src=images/6.PNG  alt="alt text" width="950" height="650">



