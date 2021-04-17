CREATE TABLE morti2 AS SELECT user_id, viewtime, HOST, COUNT(*) AS COUNT FROM systemd GROUP BY user_id, viewtime, HOST;

