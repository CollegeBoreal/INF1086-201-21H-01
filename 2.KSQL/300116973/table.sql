CREATE TABLE lago
  (registertime BIGINT,
   gender VARCHAR,
   regionid VARCHAR,
   lagoid VARCHAR,
   interests array<VARCHAR>,
   contactinfo map<VARCHAR, VARCHAR>)
  WITH (KAFKA_TOPIC='topic-journald',
        PARTITIONS=1,
        VALUE_FORMAT='json',
        KEY = 'lagoid');
