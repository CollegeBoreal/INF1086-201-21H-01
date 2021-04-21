```
CREATE KEYSPACE Nathalie
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

CREATE TABLE Restaurant (
   id INT, Name VARCHAR, borough VARCHAR, BuildingNum VARCHAR, Street VARCHAR,
   ZipCode INT, Phone text, CuisineType VARCHAR,
   PRIMARY KEY ( id )
 ) ;

 CREATE INDEX fk_Restaurant_cuisine ON Restaurant ( CuisineType ) ;

 CREATE TABLE Inspection (
   idRestaurant INT, InspectionDate date, ViolationCode VARCHAR,
   ViolationDescription VARCHAR, CriticalFlag VARCHAR, Score INT, GRADE VARCHAR,
   PRIMARY KEY ( idRestaurant, InspectionDate )
 ) ;

CREATE INDEX fk_Inspection_Restaurant ON Inspection ( Grade ) ;

```
