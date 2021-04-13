# 🐝: MongoDB 
------
## MongoDB est une base de données de documents conçue pour faciliter le développement et la mise à l'échelle. Elle propose à la fois une version communautaire et une version Entreprise de la base de données.
------
# 💻: :one: Step to Install MongoDB from Docker
```
docker pull mongo

```
![image](mongo1.jpg)

```
docker run --name mongodb -p 27017:27017 mongo

```
![image](mongo2.jpg)

```
docker exec -it mongodb bash

```
![image](mongo3.jpg)

```
mongo

```
![image](mongo4.jpg)

```
show dbs

```
![image](mongo5.jpg)

```
use admin

```
![image](mongo6.jpg)

```
db.createUser({
  user: "admin", 
  pwd: "secure", 
  roles: [ { role: "root", db: "admin" } ]
})

```
