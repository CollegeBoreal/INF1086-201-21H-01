CREATE TABLE KING AS
   SELECT message,count(*) 
   FROM LUXURY
   WHERE HOST='luxuryking' 
   GROUP BY message;
