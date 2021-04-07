CREATE STREAM S_PAGEVIEWS 
  (USERID STRING, 
   REGISTERTIME BIGINT, 
   PAGEID STRING) 
   WITH (KAFKA_TOPIC='pageviews_kafka_topic_json',
         KEY='userid', 
         PARTITIONS=2, 
         REPLICAS=1, 
         TIMESTAMP ='registertime', 
         VALUE_FORMAT='JSON');

        
        
CREATE STREAM S_USERS 
  (USERID STRING, 
   REGISTERTIME BIGINT, 
   REGIONID STRING) 
  WITH (KAFKA_TOPIC='users_kafka_topic_json',
        KEY='userid', 
        PARTITIONS=2, 
        REPLICAS=1, 
        VALUE_FORMAT='JSON');
 
        
        
