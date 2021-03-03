CREATE STREAM systemd (
    host string,
    _SYSTEMD_UNIT VARCHAR,
    message string,
    timestamp VARCHAR
) WITH (
    kafka_topic = 'topic-journald',
    value_format = 'json',
    timestamp = 'timestamp',                        -- the column to use as a timestamp
    timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''' -- the format to parse the timestamp
);
