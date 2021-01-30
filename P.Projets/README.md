# :bookmark:Projet : installer mongodb sur Docker 
## :trollface: je vous expose comment installer mongodb sur docker 
1️⃣  installer mongodb
---------------------
```
docker pull mongo
```
2️⃣ execute le contrainer 
------------------------
```
docker run --name mongodb -p 27017:27017 mongo
```
pour sortir appuyez la touche CTRL+C

3️⃣ bash au contrainer pour l'utilisateur 
-----------------------------------------
```
docker exec -it mongodb bash
```
4️⃣ aller a la gestion de mongo 
-------------------------------
```
mongo
```
5️⃣ show db pour utiliser db
----------------------------
```
show dbs
```
6️⃣ utilisez db pour creer un utilisateur
-----------------------------------------
```
use admin 
```
7️⃣
https://landscape.cncf.io/
