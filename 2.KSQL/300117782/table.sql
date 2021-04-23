
CREATE TABLE It support AS,
    SELECT message string, COUNT(*),
    FROM Erna,
    WINDOW TUMBLING (SIZE 50 SECONDS),
    GROUP BY message,
    EMIT CHANGES; 
