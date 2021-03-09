CREATE STREAM nathy
  (viewtime BIGINT,
   _CAP_EFFECTIVE VARCHAR,
   _BOOT_ID VARCHARD,
   __MONOTONIC_TIMESTAMP VARCHAR,
   __REALTIME_TIMESTAMP VARCHAR),
   timestamp VARCHAR
  WITH (KAFKA_TOPIC='topic-journald',
        VALUE_FORMAT='json',
        Partition=1
        KEY='_BOOT_ID',
        timestamp = 'timestamp',                        -- the column to use as a timestamp
        timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' -- the format to parse the timestamp
        );
