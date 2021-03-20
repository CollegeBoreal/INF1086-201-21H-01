
  
CREATE STREAM idirStream(host string, PRIORITY int, timestamp string, message string)
WITH (kafka_topic='topic-journald',value_format='json');
CREATE STREAM IdirStream2
AS SELECT * FROM idirStream
WHERE PRIORITY>=4 ;
