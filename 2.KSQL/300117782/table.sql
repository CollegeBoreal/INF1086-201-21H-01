
CREATE TABLE Accounting AS
SELECT message varchar, COUNT(*)
FROM Bright
WINDOW TUMBLING (SIZE 50 SECONDS)
WHERE host= "edmonton"
GROUP BY message
EMIT CHANGES; 
