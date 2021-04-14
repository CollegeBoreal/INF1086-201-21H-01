
# :zap: Python script pour la base de données NoSQL:zap: 
:star:Dans ce laboratoire on montre comment écrire un programme dans le language Python pour créer et se connecter et manipuler une base de données.:

:star:Dans ce projet on a besoin de ```Python, Git, Docker engine```. on travaille directement sur le serveur linux en utilisant Docker Engine et docker containers.

Créer le conteneur some-mysqlds eu executant:

```
 docker container run \
         --name some-mysqlds \
         --env MYSQL_ROOT_PASSWORD=password \
         --publish 3306:3306 \
         --publish 33060:33060 \
         --detach \
         mysql/mysql-server:latest
```         
         
<img src=images/1.PNG  alt="alt text" width="800" height="150">


