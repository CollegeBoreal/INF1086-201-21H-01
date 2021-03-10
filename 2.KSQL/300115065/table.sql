CREATE TABLE Abdel
  (registertime BIGINT,
   userid VARCHAR,
   gender VARCHAR,
   regionid VARCHAR)
  WITH (KAFKA_TOPIC = 'topic_journald',
        VALUE_FORMAT='JSON',
        KEY = 'Abdel');
