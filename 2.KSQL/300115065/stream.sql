CREATE STREAM systemd (
    host string,
    message string,
    timestamp VARCHAR
) WITH (
    kafka_topic = 'topic-journald',
    value_format = 'json',
    timestamp = 'timestamp',                       
    timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z'''
)
