# Créer un Stream et une table KSQL   :lion:

## Créer un stream

Je  me suis connecté sur mon serveur et j'ai pu créer un stream KSQL comme demandé
![image](Ckafka.PNG)

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

## Créer une table à partir du Stream


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300117806/IMAGES/ksql2.PNG" width="550">



