CREATE STREAM nathy
  (_CAP_EFFECTIVE VARCHAR,
   _STREAM_ID VARCHAR,
   __MONOTONIC_TIMESTAMP VARCHAR,
   _SYSTEMD_INVOCATION_ID VARCHAR)
  WITH (KAFKA_TOPIC='topic-journald',
        VALUE_FORMAT='json',
        PARTITIONS=1,
        KEY='_STREAM_ID',                       
    timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' 
        );
