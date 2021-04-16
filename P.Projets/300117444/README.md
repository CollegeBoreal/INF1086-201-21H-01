
# comment installer Apache CASSANDRA avec Docker-comp 

``` Apache Cassandra ``` est un système de gestion de base de données de type NoSQL conçu pour gérer des quantités massives de données sur un grand nombre de serveurs, assurant une haute disponibilité en éliminant les points de défaillance unique.
:exclamation: vous devez installer Docker sur votre server Linux pour se tutoriel :exclamation:

# Creez un fichier ``` docker-compose.yml ```  en mettant les elements suivants dedans : 

```
version: '3'

services:
  cassandra:
    image: "cassandra:3.11.4"
    container_name: leguan_cassandra
    ports:
      - "9042:9042"
    volumes:
      - ./build/cassandra:/var/lib/cassandra
    healthcheck:
      test: ["CMD-SHELL", "[ $$(nodetool statusgossip) = running ]"]
      interval: 10s
      timeout: 5s
      retries: 50
      
```
      
# Nous allons installer Cassandra en utulisant Docker-compose sous Gitbash 
:exclamation: Note : Vous pouvez utuliser le terminal de votre choix

## Commencons par verifier l'etat de votre docker machine :
![image](https://user-images.githubusercontent.com/54910261/114986493-11f22e80-9e62-11eb-876f-40716823adaa.png)


 ## :star: Executer votre docker-compose.yml. avec la commande suivante :
```
docker-compose up --detach
```
![image](https://user-images.githubusercontent.com/54910261/114987202-e3c11e80-9e62-11eb-8176-44fed1075046.png)


## Maintenant :star:  verifiez  l'installation de votre ``` docker-compose ``` avec l'une des commandes suivantes : 

:boom: ```  docker-compose ps  ``` :point_down: 
![image](https://user-images.githubusercontent.com/54910261/114987607-5af6b280-9e63-11eb-9655-7e0ba7f5b12b.png)
                         
  # OU
                   
:boom: ```  
docker container ls 
```

![image](https://user-images.githubusercontent.com/54910261/114987973-cb053880-9e63-11eb-9991-c7304ab1bc23.png)

 ```
 winpty docker exec -it leguan_cassandra bash
  
 ```
![image](https://user-images.githubusercontent.com/54910261/114988401-4cf56180-9e64-11eb-92be-89b87f566c62.png)

# :star: maintenant  vous devez creer un KEYSAPACE dans cassandra en utulisant la commande suivante : 

 ```
 cqlsh

 ```
 ![image](https://user-images.githubusercontent.com/54910261/114988920-e0c72d80-9e64-11eb-9930-9fe799e92663.png)
 
 # :star: Creer votre Workspace en utulisant la commande suivante :
 ``` CREATE KEYSPACE Idir
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};
 ```

![image](https://user-images.githubusercontent.com/54910261/114989415-65b24700-9e65-11eb-8955-56b60dc90030.png)

:exclamation: Remarque : Vous devait changer le le nom "Idir" pour nommez votre WORKSPACE avec votre propre nom .

# :star: Apres la creation de votre WORKSPACE utulisez la commande suivante :

 ```
  USE Idir
   ```
   ![image](https://user-images.githubusercontent.com/54910261/114990584-a8c0ea00-9e66-11eb-9acb-ac34e05ec5e9.png)


# :star: Maintenant nous allons creer les deux tables ci dessous : 
 ```
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
 ![image](https://user-images.githubusercontent.com/54910261/114991061-2f75c700-9e67-11eb-83f7-5964fc2e3a0d.png)

Vous pouvez voir la description d'une table de commande en mettat 

```
Describe NomDeLaTable
```
![image](https://user-images.githubusercontent.com/54910261/114991123-40bed380-9e67-11eb-9d88-ed804dd515b3.png)

## Apache Cassandra est un système de base de données distribuée très puissant, et particulièrement efficace pour prendre en charge de larges volumes d'enregistrements répartis sur de multiples serveurs. Initialement créé par Facebook, ce système est désormais open source.

# THANK YOU
#:eight_spoked_asterisk:  REFERANCE
https://www.logicbig.com/how-to/cassandra/cassandra-install-and-intro-to-cqlsh.html

 

