CREATE TABLE users
  (registertime BIGINT,
   gender VARCHAR,
   regionid VARCHAR,
   userid VARCHAR,
   interests array<VARCHAR>,
   contactinfo map<VARCHAR, VARCHAR>)
  WITH (KAFKA_TOPIC='users',
        PARTITIONS=2,
        VALUE_FORMAT='JSON',
        KEY = 'userid');
