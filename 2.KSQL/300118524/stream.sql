CREATE STREAM zoureni_stream (
    host string,message string,SYSLOG_IDENTIFIER string, _COMM string, UNIT string,SYSLOG_TIMESTAMP VARCHAR
    ) 
    
WITH (
    kafka_topic = 'topic-journald', value_format = 'json'
    );
    
