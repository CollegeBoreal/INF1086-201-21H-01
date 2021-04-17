CREATE TABLE users (
     id BIGINT PRIMARY KEY,
     usertimestamp BIGINT,
     gender VARCHAR,
     region_id VARCHAR
   ) WITH (
     KAFKA_TOPIC = 'my-users-topic', 
     VALUE_FORMAT = 'JSON'
   );
