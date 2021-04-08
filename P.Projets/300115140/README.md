# Exercice : Creating  a database with dummy data, detailed explanation and step by step process, showcasing to my fellow students at College 

_The context: I will create a Database with users willing to send money over the country and overseas. The users will have a specific ID and the table will containt name, address, country, currency, amout of money sending, dtae of transacation, transaction ID. There will be a sender user and a receiver user for each transaction_


## ARANGODB

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/logo.PNG" width="450">

## A .Installing Arango

You will be able to install Arango whenever you like: Docker container, AWS, Kubernetes.


<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/logoK.PNG" width="250">

I installed the ArangoDB on my desktop first. The free and open source version (community edition) can be found here:
https://www.arangodb.com/download-major/

The IP address used to connect from the Desktop Browser will be : http://127.0.0.1:8529 (the port used for Arango is 8529)

The default Login would be root and the default database would be system as shown below:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/aran1.PNG" width="250">

Most of the collections will be in JSON Format. I installed dummy data regarding users and also transactions _to and _from

## Using AWS to install remote server

Having a remote server and using it will ease the work if multiple developpers will use the Databse. I will be synchronizing my work on the local machine (Desktop Browser) to the AWS server.
My provided IP will be 10.0.0.19
<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/aran4.jpg" width="550">

## B. Installing data on ArangoDB

I am creating dummy data with JSON format (the one used on Arango). Fo exemple, 2 names, John Smith and Jack Johnson. I"ll have an ID for them, a reverse ID(in case of the transaction will be reversed, an transaction ID. All those information will be implemented into a framework (DjangoDB in that case).
So the goal here is to create different dummy date that I will put inside a "collection: - those collection, written in JSON format, will be imported into Arango. In the below example, our collections is named "project"

```
{"_id":"project/779554",
"_key":"779554",
"_rev":"_b0psWdC--A",
"first name":"John",
"last name":"Smith",
"ID":"d2ca45bf8b748c4f"}


{"_id":"project/779554",
"_key":"779539",
"_rev":"_b0psWdC---",
"first name":"Jack",
"last name":"Johnson",
"ID":"s3ga45bf8b229kio"}}

```
:--------------------------------------------------------------------------------------------------------------------------: |:-----------------------------------------------
<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/Proj1.PNG" width="250"> | <img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/P.Projets/300115140/IMAGES/Proj2.PNG" width="250">



