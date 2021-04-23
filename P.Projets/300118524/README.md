# NEO4J NOSQL GRAPH DATABASE :part_alternation_mark:
```
```
NEO4J est une graphe database écris en java.

NEO4J est composé de 2 éléments: noeud et relation

### COMPARAISON DE SGBDR (système de gestion de base de données relationnelle) ET BASE DE DONNÉE EN GRAPH

|-|SGBDR            |BD GRAPHE            |
|-|-----------------|---------------------|
|1|tables           |Graphe               |
|2|enregistrement   |noeud                |
|3|colonne et donnée|propriétés et valeurs|
|4|contrainte       |relation             |

```
```
### :arrow_forward: Exécuter le fichier `docker-compose.yaml`

`docker-compose up --detach`

### :arrow_forward: exécuter le container neo4j

`docker exec -it neo4j bash`

### :arrow_forward: Éxécuter le CLI `cypher-shell` faisant partie du container `neo4j`

`cypher-shell -u neo4j -p <password>`

> lors de la première exécution le `username` et `mot de passe` par défaut est `neo4j `

```
```
:arrow_forward: :computer:
![image](images/connect.png)
```
```


- [x] Lister les utilisateurs

`CALL dbms.security.listUsers()`

- [x]  Création d'un utilisateur

`CALL dbms.security.createUser(username, password, requirePasswordChange)`

- example 

`CALL dbms.security.createUser('zoureni', '1234', true)`
```
```
:arrow_forward: :computer:
![image](images/createuser.png)
```
```

- [x] Suppression d'un utilisateur

`CALL dbms.security.deleteUser('username')`

- example 

`CALL dbms.security.deleteUser('jane')`
```
```
:arrow_forward: :computer:
![image](images/deleteuser.png)
```
```
### CRÉATION DE NOEUD AVEC PROPRIÉTÉ

`CREATE (node:label { key1: value, key2: value, . . . . . . . . .  }) `

exemple: 

`CREATE (TGI:programme {nom:'genie informatique', lieu:'Toronto', diplome:'DEC', duree:'2 annees'});`

`CREATE (Z_O:personne {nom:'Zoureni Ouro', sexe:'Masculin'});`

### CRÉATION DE RELATION
```graphql
MATCH (a:label-a),(b:label-b)
WHERE a.key = "value" AND b.key = "value"
CREATE (a)-[r:nom du lien]->(b)
```

exemple
```graphql
MATCH (Z_O:personne),(TGI:programme)
WHERE Z_O.nom = "Zoureni Ouro" AND TGI.nom = "genie informatique"
CREATE (Z_O)-[r:INSCRIT]->(TGI);
```
## Exemple de :part_alternation_mark: graph database de neo4j et quelque requête

### création d'une database movie :movie_camera:

- copier le contenu du fichier movie.graphql dans le CLI cypher-shell :diamonds:

- vous pouvez vérifier votre graphe dans le `CLI cypher-shell` en exécutant

   - `MATCH (n) RETURN n;`
   
   - ![image](images/movie_cli.png)
   
```
```
- Avec le UI ça donne

   - ![image](images/graph_ui.png)
```
```
   - ![image](images/table_ui.png)
```
```
   - ![image](images/text_ui.png)
```
```
-~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-

### Quelque requête :microscope: de notre base de donnée `Movie` :movie_camera:

- [x] :mag: Trouvez l'acteur nommé "Tom Hanks"

- `MATCH (tom {name: "Tom Hanks"}) RETURN tom;`

   > ![image](images/r1.png)

- [x] :mag: Trouvez le film avec le titre "Cloud Atlas"

- MATCH (cloudAtlas {title: "Cloud Atlas"}) RETURN cloudAtlas;
 
   > ![image](images/r2.png)

- [x] :mag: Trouver 10 personnes
 
- MATCH (people:Person) RETURN people.name LIMIT 10;
 
   > ![image](images/r3.png)

- [x] :mag: Trouvez des films sortis dans les années 1990

- MATCH (nineties:Movie) WHERE nineties.released >= 1990 AND nineties.released < 2000 RETURN nineties.title;
 
   > ![image](images/r4.png)

- [x] :page_with_curl: Liste tous les films de Tom Hanks 
 
- MATCH (tom:Person {name: "Tom Hanks"})-[:ACTED_IN]->(tomHanksMovies) RETURN tom,tomHanksMovies;
 
   > ![image](images/r5.png)

- [x] Qui a réalisé "Cloud Atlas"?:question:

- MATCH (cloudAtlas {title: "Cloud Atlas"})<-[:DIRECTED]-(directors) RETURN directors.name;

   > ![image](images/r6.png) 
   
- [x] Comment les gens sont liés à "Cloud Atlas":question:

- MATCH (people:Person)-[relatedTo]-(:Movie {title: "Cloud Atlas"}) RETURN people.name, Type(relatedTo), relatedTo;

   > ![image](images/r7.png) 

- [x] Les co-acteurs de Tom Hanks

- MATCH (tom:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors) RETURN coActors.name;

   > ![image](images/r8.png) 

