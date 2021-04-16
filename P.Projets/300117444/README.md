
# comment installer Apache CASSANDRA avec Docker-comp 

``` Apache Cassandra ``` est un système de gestion de base de données de type NoSQL conçu pour gérer des quantités massives de données sur un grand nombre de serveurs, assurant une haute disponibilité en éliminant les points de défaillance unique.
:exclamation: vous devez installer Docker sur votre server Linux pour se tutoriel :exclamation:

#Creez un fichier ``` docker-compose.yml ```  en mettant les elements suivants dedans : 

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


:star: ## Executer votre docker-compose.yml. avec la commande suivante :
```
docker-compose up --detach
```
![image](https://user-images.githubusercontent.com/54910261/114987202-e3c11e80-9e62-11eb-8176-44fed1075046.png)


:: ## Maintenant :star:  verifiez  l'installation de votre ``` docker-compose ``` avec l'une des commandes suivantes : 

:boom: ```  docker-compose ps  ``` :point_down: 
![image](https://user-images.githubusercontent.com/54910261/114987607-5af6b280-9e63-11eb-9655-7e0ba7f5b12b.png)
                         #OU
                   
:boom: ```  docker container ls  ```

![image](https://user-images.githubusercontent.com/54910261/114987973-cb053880-9e63-11eb-9991-c7304ab1bc23.png)

 ```
 winpty docker exec -it leguan_cassandra bash
  
 ```
![image](https://user-images.githubusercontent.com/54910261/114988401-4cf56180-9e64-11eb-92be-89b87f566c62.png)




