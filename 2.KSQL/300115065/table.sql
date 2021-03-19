CREATE TABLE Abdel as
select host as utilisateur, count(*) from systemd group by host;
  (registertime BIGINT,
   userid VARCHAR,
   gender VARCHAR,
   regionid VARCHAR)
  WITH (KAFKA_TOPIC = 'topic_journald',
        VALUE_FORMAT='JSON',
        KEY = 'Abdel');
