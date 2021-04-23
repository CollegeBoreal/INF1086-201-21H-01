# Exercice : Creating  a database with dummy data, detailed explanation and step by step process, showcasing to my fellow students at College 


ArangoDB is a multi-model, open-source database with flexible data models for documents, graphs and key-values.
_The context: I will create a Database with users willing to send money over the country and overseas for students who buy educational content from teachers (tutors, online courses...)
The users will have a specific ID and the table will containt name, address, country, currency, amout of money sending, dtae of transacation, transaction ID. There will be a sender user and a receiver user for each transaction_


## ARANGODB

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/logo.PNG" width="650">

## A .Installing Arango

You will be able to install Arango whenever you like: Docker container, AWS, Kubernetes.


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/logoK.PNG" width="650">

I installed the ArangoDB on Docker.

```
docker run -e ARANGO_NO_AUTH=1 -p 8529:8529 -d arangodb
```


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/docker.PNG" width="650">


We can verify on Docker Desktop if the image is installed:


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/docker2.PNG" width="650">


Then, we will be able to check the Desktop interface:

The IP address used to connect from the Desktop Browser will be : http://127.0.0.1:8529 (the port used for Arango is 8529)

The default Login would be root and the default database would be system as shown below. I created a new database called BOREAL.

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/aran5.PNG" width="650">

To download the Library, I got to ArangoDB Docs and then Drivers:
https://www.arangodb.com/docs/stable/drivers/

To get the php file, I will go preferably to a git repisitory and dowload the file (as a zip file):

https://www.arangodb.com/docs/stable/drivers/php-getting-started.html

https://github.com/arangodb/arangodb-php

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/zip.PNG" width="450">


I will put the downlaod content on my htdocs on C:/ as shown below:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/php.PNG" width="450">

Then, I will be able to open the downloaded file (arangodb-php) on 

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/visual.PNG" width="650">

Then, we go back to the ArangoDB Docs on their website to retrieve the Drivers page and on the botton, use the code below:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/docs.PNG" width="650">


## B.The connection with the Database:

- To make sure the connection will work, we are using php connection. As mentionned above, we are installing the code from the Arangodb DOCS.


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/php1.PNG" width="650">


- In order to use ArangoDB, you need to specify the connection options. We do so by creating a PHP array $connectionOptions. Put the code found under ArangoDB Docs into a file named test.php in your current directory.

https://www.arangodb.com/docs/stable/drivers/php-tutorial.html

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/php2.PNG" width="650">

Then I will pick up the database I create on ArangoDB, called BOREAL as show below - we're looking to connect to that specific database.

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/boreal.PNG" width="650">

- I am using Postman to establish the connection. Postamn is a collaboration platform for API development.


- I have created 2 collections (similar to tables in SQL), one for teachers and one for students.


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/collec.PNG" width="650">



## C. Moving forward with Queries

Retrieving data from the database with AQL will be possible if you use operations like FILTER, SORT and LIMIT )added to the loop body). Most of the other AQL queries will necessite a RETURN operation to function (as shown below). 



To modify an existing users in any collections, you can go directly under collections, select your user and change the information you need as shown below:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/BRICE1.PNG" width="550">


In order to make a query, it is possible to use the interface as ahown in the examples below:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/query1.PNG" width="550">

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/query1a.PNG" width="550">



## D. Graphs

Graph databases store objects (vertices or nodes) where arbitrary data can be stored (properties) and relations between the objects (edges). Edges typically have a direction going from one object to another or multiple objects. Vertices and edges form a network of data points which is called a “graph”.
 
 <img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/graph2.PNG" width="550">
 
 
 Graph Options Menu:

* Startnode (string - valid node id or space seperated list of id’s): Heart of your graph. Rendering and traversing will start from here. Empty value means: a random starting point will be used.
* Layout: Different graph layouting algoritms. No overlap (optimal: big graph), force layout (optimal: medium graph), fruchtermann (optimal: little to medium graph).
* Renderer: Canvas mode allows editing. WebGL currently offers only display mode (a lot faster with much nodes/edges).
* Search depth (number): Search depth which is starting from your start node.
* Limit (number): Limit nodes count. If empty or zero, no limit is set.


## E. Conclusion

By choosing ArangoDB, we could use a single database for all features: chats, relationships, document sharing, various types of entities (companies, persons, universities, employees, venture funds, etc.).

It can store all connections between nodes and construct graphs with updates if you add a new connection.

The database allows implementing relations in two ways: by making links to primary keys or via connections and graphs. As we discovered, it’s better to use connections when you have dynamic attributes. And primary keys are better for situations when you have a clear understanding of relations between different entities.

What’s more, ArangoDB has an excellent web-interface that allows writing queries and instant viewing of the resulting graphs.
