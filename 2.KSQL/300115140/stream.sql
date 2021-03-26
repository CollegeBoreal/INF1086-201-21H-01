CREATE STREAM systemd (
     host string,
     message string,
     timestamp VARCHAR
) WITH (
     kafka_topic = 'topic-journald',
     value_format = 'json',
     timestamp = 'timestamp',                        -- the column to use as a timestamp
     timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' -- the format to parse the timestamp
);


CREATE STREAM s_pageviews \
  (userid VARCHAR, \
   registertime BIGINT, \
   pageid VARCHAR) \
  WITH (KAFKA_TOPIC='pageviews_kafka_topic_json', \
        VALUE_FORMAT='JSON', \
        TIMESTAMP='registertime', \
        KEY = 'userid');
        
        
CREATE STREAM s_users \
  (userid VARCHAR, \
   registertime BIGINT, \
   regionid VARCHAR) \
  WITH (KAFKA_TOPIC='users_kafka_topic_json', \
        VALUE_FORMAT='JSON', \
        TIMESTAMP='registertime', \
        KEY = 'userid');        
