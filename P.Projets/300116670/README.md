# QUELQUES ETAPES POUR INSTALLER LA BASE DE DONNÉÉS NOSQL CASSANDRA

![image](https://user-images.githubusercontent.com/55238107/114260020-3d77a380-99a0-11eb-9197-5b2a1af312f4.png)


# Qu'est ce que Cassandra?

Apache Cassandra est une base de donnee NoSQL qui permet le stockage et le traitement de tres grand volumes des donnees. Il est open source et est utilise par plusieurs entreprise comme: Activision , Apple , BazaarVoice , Best Buy , CERN, Constant Contact , Comcast , eBay , Fidelity, Github, Hulu , ING , Instagram , Intuit , Macy's, Macquarie Bank , Microsoft, McDonalds, Netflix , New York Times , Outbrain, Pearson Education, Sky , Spotify , Uber , Walmartet des milliers d'autres entreprises disposant de grands ensembles de données actifs. En fait, Cassandra est utilisée par 40% des Fortune 100.

*TOLÉRANCE DE PANNE*
Les données sont automatiquement répliquées sur plusieurs nœuds pour la tolérance aux pannes. La réplication sur plusieurs centres de données est prise en charge. Les nœuds défaillants peuvent être remplacés sans temps d'arrêt.

*PERFORMANT*
Cassandra surpasse constamment les alternatives NoSQL populaires dans les benchmarks et les applications réelles, principalement en raison de choix architecturaux fondamentaux .

*DÉCENTRALISÉ*
Il n'y a pas de points de défaillance uniques. Il n'y a aucun goulot d'étranglement du réseau. Chaque nœud du cluster est identique.

*DURABLE*
Cassandra convient aux applications qui ne peuvent pas se permettre de perdre des données , même lorsqu'un centre de données entier tombe en panne.

*ÉLASTIQUE*
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





# CONCLUSION

La base de données Apache Cassandra est le bon choix lorsque vous avez besoin d’évolutivité et de haute disponibilité sans compromettre les performances. L’évolutivité linéaire et la tolérance éprouvée aux pannes sur le matériel de base ou l’infrastructure cloud en font la plateforme idéale pour les données critiques. Le support de Cassandra pour la réplication dans plusieurs datacenters est le meilleur de sa catégorie, offrant une latence plus faible pour vos utilisateurs et la tranquillité d’esprit de savoir que vous pouvez survivre aux pannes régionales.

