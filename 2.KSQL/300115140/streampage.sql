
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
        
        
