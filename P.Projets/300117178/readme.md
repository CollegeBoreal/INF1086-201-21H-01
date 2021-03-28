##                                           REDIS
----------------------------------------------------
##  I. What is Redis? 
Redis est une base de données très rapide
non relationnelle qui stocke un mappage de clés vers cinq types de valeurs différents. 
nous avons:
|Structure Type|What it Contain|
|--------------|---------------|
|STRING        |Strings, integers, or floatingpointvalues| 
|LIST          |  Linked list of strings |
|SET           |Unordered collection of unique strings|
|HASH          |Unordered hash table of keys to values|
|ZSET(sorted set)|Ordered mapping of string members to floating-point scores, ordered by score|
##  II. Why Redis? 
votre code est plus court, plus facile à comprendre et plus facile à maintenir, mais il est plus rapide
(car vous n'avez pas besoin de lire une base de données pour mettre à jour vos données).
##  III. Set Redis With Docker
