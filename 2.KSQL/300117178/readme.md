## :rocket: STREAM AND TABLE

## :one: tout d'abord on creer un premier stream
```
CREATE STREAM logEvents(host string, PRIORITY int, timestamp string, message string)
WITH (kafka_topic='topic-journald',value_format='json');

```
![](img/ksql1.JPG)
notre stream affiche **host** , **la priorite**, **le timestramp** ,**le message** de notre topic d'evenements
