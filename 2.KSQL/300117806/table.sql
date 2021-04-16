

CREATE TABLE HASS AS 
      SELECT message, count(*) 
      FROM systemd 
      WINDOW TUMBLING (SIZE 30 SECONDS) 
      WHERE message = 'failed_login' 
      GROUP BY message 
      HAVING count(*) > 3;
