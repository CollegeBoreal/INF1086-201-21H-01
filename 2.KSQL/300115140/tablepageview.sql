CREATE TABLE t_pageviews AS \
SELECT userid, pageid, count(*) as count \
FROM s_pageviews \
GROUP BY userid, pageid;
