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

### création d'une graphe movie

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
