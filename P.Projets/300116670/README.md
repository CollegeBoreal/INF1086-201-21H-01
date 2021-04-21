# QUELQUES ETAPES POUR INSTALLER LA BASE DE DONNÉÉS NOSQL CASSANDRA

![image](https://user-images.githubusercontent.com/55238107/114260020-3d77a380-99a0-11eb-9197-5b2a1af312f4.png)


# Qu'est ce que Cassandra?

Apache Cassandra est une base de donnee de type NoSQL open-source utilisée pour gérer et stocker des grands volumes de donnees.  Elle est utilisée par de nombreuses entreprises comme: Activision , Apple , BazaarVoice , Best Buy , CERN, Constant Contact , Comcast , eBay , Fidelity, Github, Hulu , ING , Instagram , Intuit , Macy's, Macquarie Bank , Microsoft, McDonalds, Netflix , New York Times , Outbrain, Pearson Education, Sky , Spotify , Uber , Walmartet des milliers d'autres entreprises disposant de grands ensembles de données actifs. En fait, Cassandra est utilisée par 40% des Fortune 100.

**TOLÉRANCE DE PANNE**

Les données sont automatiquement répliquées sur plusieurs nœuds pour la tolérance aux pannes. La réplication sur plusieurs centres de données est prise en charge. Les nœuds défaillants peuvent être remplacés sans temps d'arrêt.

**PERFORMANT**

Cassandra surpasse constamment les alternatives NoSQL populaires dans les benchmarks et les applications réelles, principalement en raison de choix architecturaux fondamentaux .

**DÉCENTRALISÉ**

Il n'y a pas de points de défaillance uniques. Il n'y a aucun goulot d'étranglement du réseau. Chaque nœud du cluster est identique.

**DURABLE**
Cassandra convient aux applications qui ne peuvent pas se permettre de perdre des données , même lorsqu'un centre de données entier tombe en panne.

**ÉLASTIQUE**

Le débit de lecture et d'écriture augmente de manière linéaire à mesure que de nouvelles machines sont ajoutées, sans temps d'arrêt ni interruption des applications.

# :one: CREATION DU FICHIER DOCKER-COMPOSE.YML 

Ce dernier nous permettra de creer notre container cassandra

_ Creez dans votre repertoire un fichier nommé docker-compose.yml

     touch docker-compose.yml
     
     
_ Mettez-y le contenu suivant:

     version: '3'

     services:
       cassandra:
         image: "cassandra:3.11.4"
         container_name: cassandra_database
         ports:
           - "9042:9042"
         volumes:
           - ./build/cassandra:/var/lib/cassandra
         healthcheck:
           test: ["CMD-SHELL", "[ $$(nodetool statusgossip) = running ]"]
           interval: 10s
           timeout: 5s
           retries: 50
           
# :two: DEMARRER LE CONTAINEUR
  
  Utiliser la commande suivante:
  
        docker-compose up --detach
           
  Cette dernière démarre les conteneurs en arrière-plan et les laisse en cours d'exécution.
  
  ![image](https://user-images.githubusercontent.com/55238107/115352855-d1f2ba80-a185-11eb-952d-5d2c39d37a7e.png)

  
![image](https://user-images.githubusercontent.com/55238107/115351435-40367d80-a184-11eb-8f4b-0f359285fa28.png)

# 3️⃣ ENTRER DANS LE CONTAINEUR ET OUVRIR LE CLI DE NOTRE BASE DE DONNÉES CASSANDRA

Entrons dans notre container:

![image](https://user-images.githubusercontent.com/55238107/115352183-103baa00-a185-11eb-9740-1d2a7e60af76.png)


Ouvrir le cli cassandra: cqlsh

![image](https://user-images.githubusercontent.com/55238107/115352564-7c1e1280-a185-11eb-8629-a33622c5b22b.png)


# 4️⃣ CRÉATION DE LA BASE DE DONNÉES


Pour créer notre base de données :

     CREATE KEYSPACE IF NOT EXISTS resto_TO WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor': 1};
     
     ![image](https://user-images.githubusercontent.com/55238107/115356698-ea64d400-a189-11eb-887e-d594f33cf3e1.png)

     
Nous venons de créer la base de données resto_TO pour laquelle le facteur de réplication est mis à 1, ce qui suffit dans un cadre centralisé.


 Vous pouvez maintenant sélectionner la base de données pour vos prochaines requêtes.

      USE resto_TO;
      
# 5️⃣ CRÉATION DE TABLE

ous pouvons maintenant créer les tables (Column Family pour Cassandra) Restaurant et Inspection à partir du schéma suivant :

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

![image](https://user-images.githubusercontent.com/55238107/115356830-08cacf80-a18a-11eb-92e6-6577eb3ef736.png)

Nous pouvons remarquer que chaque inspection est liée à un restaurant via l’identifiant de ce dernier.

Pour vérifier si les tables ont bien été créées (sous cqlsh). Entrez les commandes suivantes:

       DESC Restaurant;
![image](https://user-images.githubusercontent.com/55238107/115357125-4cbdd480-a18a-11eb-8a0a-22c9650e33c2.png)

       DESC Inspection;
![image](https://user-images.githubusercontent.com/55238107/115357216-69f2a300-a18a-11eb-9836-fcfcd52561bf.png)


# 6️⃣ REQUETE

Afficher les noms des restaurants de cuisine Française (French).

     SELECT Name FROM Restaurant WHERE cuisineType = 'French' 



# CONCLUSION

La base de données Apache Cassandra est le bon choix lorsque vous avez besoin d’évolutivité et de haute disponibilité sans compromettre les performances. L’évolutivité linéaire et la tolérance éprouvée aux pannes sur le matériel de base ou l’infrastructure cloud en font la plateforme idéale pour les données critiques. Le support de Cassandra pour la réplication dans plusieurs datacenters est le meilleur de sa catégorie, offrant une latence plus faible pour vos utilisateurs et la tranquillité d’esprit de savoir que vous pouvez survivre aux pannes régionales.

