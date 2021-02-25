CREATE TABLE lago
  (registertime BIGINT,
   gender VARCHAR,
   regionid VARCHAR,
   lagoid VARCHAR,
   interests array<VARCHAR>,
   contactinfo map<VARCHAR, VARCHAR>)
  WITH (KAFKA_TOPIC='lago',
        PARTITIONS=1,
        VALUE_FORMAT='avro',
        KEY = 'lagoid');
