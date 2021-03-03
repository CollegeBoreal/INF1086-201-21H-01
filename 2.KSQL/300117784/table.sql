 CREATE TABLE Logtable2(PRIORITY string,SYSLOG_IDENTIFIER string,timestamp VARCHAR
>)WITH (kafka_topic = 'topic-journald',value_format = 'json',KEY='TIMESTAMP');
