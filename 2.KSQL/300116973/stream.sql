CREATE STREAM nathy
  (viewtime BIGINT,
   userid VARCHAR,
   pageid VARCHAR)
  WITH (KAFKA_TOPIC='topic-journald',
        VALUE_FORMAT='DELIMITED',
        PARTITIONS=1,
        KEY='pageid',
        TIMESTAMP='viewtime');
