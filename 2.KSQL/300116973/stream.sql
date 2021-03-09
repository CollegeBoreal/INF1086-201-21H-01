CREATE STREAM nathy
  (_CAP_EFFECTIVE VARCHAR,
   _BOOT_ID INT,
   __MONOTONIC_TIMESTAMP VARCHAR,
   __REALTIME_TIMESTAMP VARCHAR)
  WITH (KAFKA_TOPIC='topic-journald',
        VALUE_FORMAT='json',
        PARTITIONS=1,
        KEY='_BOOT_ID',                       
    timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' 
        );
