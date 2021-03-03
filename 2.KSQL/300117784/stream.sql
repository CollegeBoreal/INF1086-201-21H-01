 CREATE STREAM Logservice1(PRIORITY string,SYSLOG_IDENTIFIER string)
 WITH (kafka_topic = 'topic-journald',value_format = 'json');
