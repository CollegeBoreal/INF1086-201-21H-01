# Créer un Stream et une table KSQL   :lion:

:one: # creation stream 

Je  me suis connecté sur mon serveur et j'ai pu créer un stream KSQL comme demandé

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300117806/IMAGES/Copiee.png" width="550">


```
  
CREATE STREAM systemd (
     host string,
     message string,
     timestamp VARCHAR
) WITH (
     kafka_topic = 'topic-journald',
     value_format = 'json',
     timestamp = 'timestamp',                        -- the column to use as a timestamp
     timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' -- the format to parse the timestamp
);
```

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300117806/IMAGES/ksql1.PNG" width="550">

      

Maintenant, lorsque j'utilise mon script python pour consommer le sujet '231_console_failure', j'obtiens un None en permanence lorsqu'il n'y a pas de correspondance.

Et quand il y a une correspondance, c'est-à-dire plus de 3 en 30 secondes, il donne cette valeur. Mais disons que s'il y a 10 tentatives en 30 secondes, le consommateur récupère 7 messages où chaque message diffère avec un compte de 4 à 10.

<img src=https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300117806/IMAGES/kafka.PNG width="550">



## Créer une table à partir du Stream:rainbow:


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300117806/IMAGES/ksql2.PNG" width="550">




# Creation de table 

# vérification:computer:window:
-----------------------
```

CREATE TABLE HASS AS \
      SELECT message, count(*) \ 
      FROM systemd \
      WINDOW TUMBLING (SIZE 30 SECONDS) \
      WHERE message = 'failed_login' \
      GROUP BY message \
      HAVING count(*) > 3;
      
```

      
 
<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300117806/IMAGES/copies.png" width="550">



https://stackoverflow.com/questions/54533958/ksql-table-group-by-with-only-one-output-within-the-given-time

      



