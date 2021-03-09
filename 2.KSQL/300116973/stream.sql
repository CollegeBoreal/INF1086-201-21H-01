CREATE STREAM nathy
  (viewtime BIGINT,
   userid VARCHAR,
   pageid VARCHAR,
   timestamp VARCHAR)
  WITH (KAFKA_TOPIC='topic-journald',
        VALUE_FORMAT='json',
        PARTITIONS=1,
        KEY='pageid',
        timestamp = 'timestamp',                        
    timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' 
        );
