CREATE STREAM Aurianeserver_withkey (
    host string,
    message string,
    timestamp VARCHAR,
    _MACHINE_ID VARCHAR,
    _SYSTEMD_UNIT string
    
) WITH (
    kafka_topic = 'topic-journald',
    value_format = 'json',
    timestamp = 'timestamp',                        
    timestamp_format = 'yyyy-MM-dd''T''HH:mm:ss.nnnnnn''Z''',
    KEY='_MACHINE_ID'
); 
 





                                                           
