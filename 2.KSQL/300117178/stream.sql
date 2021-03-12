CREATE STREAM logEvents(host string, PRIORITY int, timestamp string, message string)
WITH (kafka_topic='topic-journald',value_format='json');
CREATE STREAM MaxlogEvents
AS SELECT * FROM logEvents
WHERE PRIORITY>=6 ;
