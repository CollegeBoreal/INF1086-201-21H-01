# KSQL STREAM AND TABLE CREATION
## Objective of this exercice:


**In this exercice, we are installing KSQL in our Linux server (IP address 10.13.237.14) and we run our DB Kafka in there.**

Please note that there are 2 different streams (_streampageviews.sql_ and _streamsystemd.sql_). I have created a table called _tablepageview.sql_ that refers to the stream _streampageviews.sql_ and a table called _tablezackito_ that refers to the stream _streamsystemd_


## Connecting to Kafka CLI

1 - The first step is to connect to VM machine (zackito in this instance)

2- We launch the containers (docker-compose commands)

3- we connect to the Kafka Borker (docker exec or docker-compose commands)


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300115140/IMAGES/ksql1.PNG" width="550">


4- Once into the CLI, we can list the topics created, create streaming and tables

In my case, I will create 2 different streams and then for each stream, which will have a respective tables It will be easer for you, reader, to run the codes afterwards.


**I'm making sure Vector is up and running:**


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300115140/IMAGES/ksql3.PNG" width="550">


1 - The STREAM file _streamsystemd.sql_ was created and the table _tablezack.sql_ was created in relation with that stream (streamsystemd.sql related to tablezack.sql)

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

```
CREATE TABLE ZACKITO
AS SELECT MESSAGE, 
          TIMESTAMP, 
          HOST, 
COUNT(*) AS COUNT FROM SYSTEMD 
GROUP BY MESSAGE, TIMESTAMP, HOST;
```



<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300115140/IMAGES/tablezack.PNG" width="550">


2 - Adding a new STREAM and a related TABLE

Just to have another idea of what could be a stream and table with different varaibles, I added a new example:
The stream file _streampage.sql_ related to the table _tableview.sql_

```
CREATE STREAM S_PAGEVIEWS 
  (USERID STRING, 
   REGISTERTIME BIGINT, 
   PAGEID STRING) 
   WITH (KAFKA_TOPIC='pageviews_kafka_topic_json',
         KEY='userid', 
         PARTITIONS=2, 
         REPLICAS=1, 
         TIMESTAMP ='registertime', 
         VALUE_FORMAT='JSON');
        
CREATE STREAM S_USERS 
  (USERID STRING, 
   REGISTERTIME BIGINT, 
   REGIONID STRING) 
  WITH (KAFKA_TOPIC='users_kafka_topic_json',
        KEY='userid', 
        PARTITIONS=2, 
        REPLICAS=1, 
        VALUE_FORMAT='JSON');
  ```
  
  
  ```
CREATE TABLE t_pageviews AS \
SELECT userid, pageid, count(*) as count \
FROM s_pageviews \
GROUP BY userid, pageid;

```


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300115140/IMAGES/stream2.PNG" width="850">

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300115140/IMAGES/stream3.PNG" width="550">

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300115140/IMAGES/table%202.PNG" width="550">



In order to call the table, I 


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/2.KSQL/300115140/IMAGES/Topics1.PNG" width="550">





