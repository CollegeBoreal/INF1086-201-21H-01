
# :zap: Python script pour la base de données NoSQL:zap: 
:star:Dans ce laboratoire on montre comment écrire un programme dans le language Python pour créer et se connecter et manipuler une base de données.:

:star:Dans ce projet on a besoin de ```Python, Git, Docker engine```. on travaille directement sur le serveur linux en utilisant Docker Engine et docker containers.

Créer le conteneur some-mysqlds eu éxecutant:

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

:star:Créer la base de données world_x directement sur notre machine Linux en éxecutant:

```
 docker container exec --interactive some-mysqlds mysql \
                        --user root --password=password \
                        --execute "CREATE DATABASE world_x;"

```

:star: Si vous avez problème de vous connecter au server, en fait, au docker engine, comme moi :

<img src=images/2.PNG  alt="alt text" width="800" height="150">


##

:star: D'abord il faut s'assurer que votre container, dans ce cas ``` some-mysqlds ``` existe déjà en 
utilisant la commande 
``` 
docket container ls 
``` 
comme dans la photo suivante:

##
En suite, en utilisant la commande
```
winpty docker container exec --interactive --tty some-mysqlds bash 
``` 
connectez-vous à votre container.
##

En utilisant le nom d'utilisateur et le mot de passe connectez-vous à votre SQL:

```
mysql --user root -p
password
```

<img src=images/3.PNG  alt="alt text" width="800" height="550">


##

Miaitenant, c'est le moment de créer notre utilisateur et son mot de passe:
##

```
CREATE USER 'root'@'%' IDENTIFIED BY 'password';
```
Et lui donner son autorisation:
```
docker container exec --interactive some-mysqlds `
                mysql --user root --password=password `
                --execute "GRANT ALL ON *.* TO 'root'@'%';"
```

```
CREATE DATABASE world_x;

CREATE USER IF NOT EXISTS 'root'@'10.13.237.18' IDENTIFIED BY 'password';

```

<img src=images/4.PNG  alt="alt text" width="950" height="250">


##


##
:star: Comme dans ce cas, on travaille directement sur notre docker engine,
Dans notre serveur, on vérifie la situation des portes, sur quelles portes est en train d'écouter en faisant:

```
netstat -ln

```

##
<img src=images/5.PNG  alt="alt text" width="850" height="550">


##

On efface les dockers qu'on les utilise pas et sont meurts:

```
docker container rm 5142efceb91f cd4a91c91e35 e36483ea5f2b e0055d7f0bee a3734e0ee970 bb5c3e53cdf3

```
Et on s'assure qu;on les a bien supprimer:

```
docker container ls --all
```
##
<img src=images/6.PNG  alt="alt text" width="800" height="250">

##

D'autre fois vérification des portes:

<img src=images/7.PNG  alt="alt text" width="800" height="350">

##
vérification de notre conteneur ```some-mysqlds``` et son réseau:

<img src=images/8.PNG  alt="alt text" width="1050" height="500">

##

Maintemant notre infrastructure est prete pour executer et les python script.

par exemple pour imprimer le fichier jason:

<img src=images/8.PNG  alt="alt text" width="1050" height="400">













