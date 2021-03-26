CREATE TABLE zack
>  (_SOURCE_REALTIME_TIMESTAMP VARCHAR,
>    _SYSTEMD_UNIT VARCHAR,
>   __MONOTONIC_TIMESTAMP VARCHAR,
>   MESSAGE VARCHAR,
>   SYSLOG_TIMESTAMP VARCHAR)
>  WITH (KAFKA_TOPIC='topic-journald',
>        PARTITIONS=1,
>        VALUE_FORMAT='json'
>  );


CREATE TABLE t_pageviews AS \
SELECT userid, pageid, count(*) as count \
FROM s_pageviews \
GROUP BY userid, pageid;
