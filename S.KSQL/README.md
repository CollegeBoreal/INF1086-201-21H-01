
# KSQL



Révision:


## Topics

```
ksql> SHOW TOPICS;
```

```
ksql> PRINT 'my-topic' FROM BEGINNING;
```

## Structure WITH

### Transformation de données WITH (VALUE_FORMAT)

- AVRO

- JSON
    * ( column TYPE, column TYPE, ... )
    * Type: BigInt, String, ...
    * [STRUCT](https://docs.confluent.io/current/ksql/docs/developer-guide/query-with-structured-data.html)

- DELIMITED
    * CSV

### Origine de données WITH (KAFKA_TOPIC)


### Nom des stream-table et de Topics

Par Convention, Utiliser `_`dans les noms de Streams et Tables: Note: ( `-` ne marche pas)

Par Convention, Utiliser `-`dans les noms de Topics


## Create Stream

<img src="images/streams-vs-tables-1.png" width="500" height="333"></img>


* [CREATE STREAM stream_name](https://docs.confluent.io/current/ksql/docs/developer-guide/syntax-reference.html#create-stream)

* [CREATE STREAM stream_name AS SELECT](https://docs.confluent.io/current/ksql/docs/developer-guide/syntax-reference.html#create-stream-as-select)

* Create `Stream-Table`Join from Select

```
ksql> CREATE STREAM enriched_payments AS
           SELECT payment_id, u.country, total
           FROM payments_stream p
           LEFT JOIN users_table u
           ON p.user_id = u.user_id;
```

## Les requetes (SELECT)

* Une table simple (ROWTIME et ROWKEY)

```
ksql> SELECT * FROM ksql_products_table;

1553708750703 | 20225 | Long-Pants | 20225 | 75 | 1553708324
1553708754537 | 20227 | Dress-Pinky | 20227 | 89 | 1553708324
```


* Avec Structure

```
ksql> SELECT NAME, SKU,  \
       TICKET->PRICE,  \
       TIMESTAMPTOSTRING(TICKET->PRODUCT_DATE, 'yyyy-MM-dd HH:mm:ss')   \
       FROM ksql_products;


Scarf | 20223 | 25 | 2019-03-26 13:35:08
Braclet | 20224 | 35 | 2019-03-12 13:35:08
T-shirt | 20228 | 40 | 2019-03-16 13:35:08
```


## JOIN (ensure co-partitioning)

[Partition Data to Enable Joins](https://docs.confluent.io/current/ksql/docs/developer-guide/partition-data.html)

* ROWKEY

```
ksql> SELECT ROWTIME, ROWKEY, ID, FIRST_NAME, LAST_NAME FROM CUSTOMERS LIMIT 5;
1554920704559 | null | 1 | Bibby | Argabrite
1554920700660 | null | 3 | Marv | Dalrymple
1554920698753 | null | 7 | Marigold | Veld
1554920696742 | null | 8 | Ruperto | Matteotti
1554920702601 | null | 5 | Modestia | Coltart
```

* WITH (PARTITIONS): Partitions égales

```
ksql> CREATE STREAM CUSTOMERS_REKEY WITH (PARTITIONS=6) AS SELECT * FROM CUSTOMERS PARTITION BY LAST_NAME;
```

* [Inspecter les clés](https://www.confluent.io/stream-processing-cookbook/ksql-recipes/inspecting-changing-topic-keys)

```
ksql> DESCRIBE EXTENDED CUSTOMERS_REKEY;

Type                 : STREAM
Key field            : LAST_NAME
[...]
```

* Montrer les clés dans une requete

```
ksql> SELECT ROWKEY, ID, FIRST_NAME, LAST_NAME FROM CUSTOMERS_REKEY LIMIT 5;
Yeeles | 4 | Nolana | Yeeles
Dalrymple | 3 | Marv | Dalrymple
Coltart | 5 | Modestia | Coltart
Acaster | 6 | Bram | Acaster
Argabrite | 1 | Bibby | Argabrite
```

## Create Table

* [CREATE TABLE table_name](https://docs.confluent.io/current/ksql/docs/developer-guide/syntax-reference.html#create-table)

* Créer un stream avec clé

```
ksql> CREATE STREAM products_with_key \
         WITH (VALUE_FORMAT='AVRO', KAFKA_TOPIC='products-with-key') \
         AS SELECT NAME, CAST(SKU AS STRING) AS ID, TICKET->PRICE, TICKET->PRODUCT_DATE \
         FROM ksql_products PARTITION BY ID;
         
 
 Message
----------------------------
 Stream created and running
```

* Crée la table d'après le topic `products-with-key` et spécifier la clé `KEY`:
```
ksql> CREATE TABLE ksql_products_table \
      WITH (VALUE_FORMAT='AVRO', \
      KAFKA_TOPIC='products-with-key', KEY='ID');
      
      
  Message
---------------
 Table created
---------------
```

* [CREATE TABLE table_name AS SELECT](https://docs.confluent.io/current/ksql/docs/developer-guide/syntax-reference.html#create-table-as-select)





## Play whith running Queries

* Montrer les Requetes en cours

```
ksql> SHOW QUERIES;

 Query ID              | Kafka Topic    | Query String                                                                                                                                                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 CSAS_PRODUCTS_WITH_KEY_1 | PRODUCTS_WITH_KEY | CREATE STREAM products_with_key    WITH (VALUE_FORMAT='AVRO',     KAFKA_TOPIC='repas_with_key') 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
For detailed information on a Query run: EXPLAIN <Query ID>;
```

* Stopper une requete

```
ksql> terminate  CSAS_PRODUCTS_WITH_KEY_1;

 Message           
-------------------
 Query terminated. 
-------------------
```

## Drop Stream/Table

* Détruire un stream

```
ksql> drop stream products_with_key;

 Message                             
-------------------------------------
 Source PRODUCTS_WITH_KEY was dropped.  
-------------------------------------
```

* Détruire une tables

```
ksql> drop table products;

 Message                         
---------------------------------
 Source PRODUCTS was dropped.  
---------------------------------
```

---


## Reference:

https://docs.confluent.io/current/ksql/docs/developer-guide/syntax-reference.html

https://docs.confluent.io/current/ksql/docs/troubleshoot-ksql.html

[KSQL shows no data for a query against TABLE if the source messages are not keyed.](https://github.com/confluentinc/ksql/issues/1405)

https://www.confluent.io/blog/kafka-streams-tables-part-1-event-streaming/

## Lecture:


[KSQL – The Open Source SQL Streaming Engine for Apache Kafka by Kai Wähner](https://www.youtube.com/watch?v=nA-ZKsXNJCQ)

[Distributed stream processing for everyone with KSQL by Michael Noll](./big_data_fast_data_easy_data_-_distributed_stream_processing_for_everyone_with_ksql_-_michael_noll_-_berlin_buzzwords_2018.pdf)
