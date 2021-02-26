CREATE TABLE lago1
  (_TRANSPORT VARCHAR,
   timestamp VARCHAR,
   _GID VARCHAR,
   message VARCHAR)
  WITH (KAFKA_TOPIC='topic-journald',
        PARTITIONS=1,
        VALUE_FORMAT='json',
        KEY='message'
  );
