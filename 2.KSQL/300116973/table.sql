CREATE TABLE lago AS
    SELECT message string, COUNT(*)
    FROM NATHY
    WINDOW TUMBLING (SIZE 30 SECONDS)
    GROUP BY message
    EMIT CHANGES;        
