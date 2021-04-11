# NEO4J NOSQL GRAPH DATABASE ```
```
```

### Exécuter le fichier `docker-compose.yaml`

`docker-compose up --detach`

### exécuter le container neo4j

`docker exec -it neo4j bash`

### Éxécuter le CLI `cypher-shell` faisant partie du container `neo4j`

`cypher-shell -u neo4j -p <password>`

> lors de la première exécution le `username` et `mot de passe` par défaut est `neo4j `

## Exemple de graph database de neo4j et quelque requête

### création d'une database movie

- copier le contenu du fichier movie.graphql dans le CLI cypher-shell

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

### quelque requête de notre base de donnée `Movie` 

- [x] Trouvez l'acteur nommé "Tom Hanks"

- `MATCH (tom {name: "Tom Hanks"}) RETURN tom;`

   > ![image](images/r1.png)

- [x] Trouvez le film avec le titre "Cloud Atlas"

- MATCH (cloudAtlas {title: "Cloud Atlas"}) RETURN cloudAtlas;
 
   > ![image](images/r2.png)

- [x] Trouver 10 personnes
 
- MATCH (people:Person) RETURN people.name LIMIT 10;
 
   > ![image](images/r3.png)

- [x] Trouvez des films sortis dans les années 1990

- MATCH (nineties:Movie) WHERE nineties.released >= 1990 AND nineties.released < 2000 RETURN nineties.title;
 
   > ![image](images/r4.png)

- [x] Liste tous les films de Tom Hanks 
 
- MATCH (tom:Person {name: "Tom Hanks"})-[:ACTED_IN]->(tomHanksMovies) RETURN tom,tomHanksMovies;
 
   > ![image](images/r5.png)

- [x] Qui a réalisé "Cloud Atlas"?

- MATCH (cloudAtlas {title: "Cloud Atlas"})<-[:DIRECTED]-(directors) RETURN directors.name;

   > ![image](images/r6.png) 
   
- [x] Comment les gens sont liés à "Cloud Atlas"

- MATCH (people:Person)-[relatedTo]-(:Movie {title: "Cloud Atlas"}) RETURN people.name, Type(relatedTo), relatedTo;

   > ![image](images/r7.png) 

- [x] Les co-acteurs de Tom Hanks

- MATCH (tom:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors) RETURN coActors.name;

   > ![image](images/r8.png) 

