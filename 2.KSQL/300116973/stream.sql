CREATE STREAM NATHY (
    __REALTIME_TIMESTAMP string,
    message string,
    _SOURCE_REALTIME_TIMESTAMP VARCHAR,
    _MACHINE_ID VARCHAR,
    _SYSTEMD_UNIT string
    
) WITH (
    kafka_topic = 'topic-journald',
    value_format = 'json'   
); 
