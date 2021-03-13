 CREATE STREAM Logservices(PRIORITY string, SYSLOG_IDENTIFIER string , host string , message string)
 WITH (kafka_topic = 'topic-journald', value_format = 'json');

	CREATE STREAM EventsIdentifier
AS SELECT SYSLOG_IDENTIFIER, message  FROM Logservices;
