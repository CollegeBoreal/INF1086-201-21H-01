# :bookmark:Projet : installer mongodb sur Docker 
## :trollface: je vous expose comment installer mongodb avec docker 
1️⃣  installer mongodb
---------------------
``
docker pull mongo
``
2️⃣ execute le contrainer 
------------------------
``
docker run --name mongodb -p 27017:27017 mongo
``
3️⃣ bash au contrainer pour l'utilisateur 
-----------------------------------------
``docker exec -it mongodb bash``



https://landscape.cncf.io/
