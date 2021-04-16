ksql> CREATE TABLE hassana
>  (_SOURCE_REALTIME_TIMESTAMP VARCHAR,
>   _REALTIME_TIMESTAMP VARCHAR,
>   _CAP_EFFECTIVE VARCHAR,
>   MESSAGE VARCHAR,
>   SYSLOG_TIMESTAMP VARCHAR)
>  WITH (KAFKA_TOPIC='topic-journald',
>        PARTITIONS=1,
>        VALUE_FORMAT='json'
>  );


CREATE TABLE HASS AS 
      SELECT message, count(*) 
      FROM systemd 
      WINDOW TUMBLING (SIZE 30 SECONDS) 
      WHERE message = 'failed_login' 
      GROUP BY message 
      HAVING count(*) > 3;
