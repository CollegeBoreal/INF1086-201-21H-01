CREATE TABLE lago1
  (key VARCHAR,
    _TRANSPORT BIGINT ,
   timestamp VARCHAR,
   _GID VARCHAR,
   message VARCHAR)
  WITH (KAFKA_TOPIC='topic-journald',
        VALUE_FORMAT='json',
        KEY='key'
  );
