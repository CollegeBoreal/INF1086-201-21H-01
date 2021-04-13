# 🐝: MongoDB 
------
## MongoDB est une base de données de documents conçue pour faciliter le développement et la mise à l'échelle. Elle propose à la fois une version communautaire et une version Entreprise de la base de données.
------
# 💻: :one: Step to Install MongoDB from Docker
```
docker pull mongo

```
![image](pp1.PNG)

```
docker run --name mongodb -p 27017:27017 mongo

```
![image](pp1.PNG)

```
docker exec -it mongodb bash

```
![image](pp1.PNG)

```
mongo

```
![image](pp1.PNG)

```
show dbs

```
![image](pp1.PNG)

```
use admin

```
![image](pp1.PNG)

```
db.createUser({
  user: "admin", 
  pwd: "secure", 
  roles: [ { role: "root", db: "admin" } ]
})

```
