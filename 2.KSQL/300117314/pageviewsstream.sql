CREATE STREAM pageviews (
    page_id BIGINT,
    viewtime BIGINT,
    user_id VARCHAR
  ) WITH (
    KAFKA_TOPIC = 'keyless-pageviews-topic',
    PARTITIONS=2,
    REPLICAS=1
    VALUE_FORMAT = 'JSON'
  );
