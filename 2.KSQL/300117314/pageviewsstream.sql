CREATE STREAM pageviews (
    page_id BIGINT,
    viewtime BIGINT,
    user_id VARCHAR
  ) WITH (
    KAFKA_TOPIC = 'keyless-pageviews-topic',
    VALUE_FORMAT = 'JSON'
  );
