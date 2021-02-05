# Source


Type de formats:

:one: CSV (Comma Separated Values)

Première ligne représente les métadonnées

Séparé par des virgules

```csv
PÉRIODE DE RÉFÉRENCE,GÉO,DGUID,Langue	Langue parlée à la maison
2001,Canada,2016A000011124,Anglais	Total population
2002,Canada,2016A000011124,Anglais	Total population
```

:two: JSON (JavaScript Object Notation)

* accolades déterminent l'objet

* K/V Pairs (Key:Value example "PRIORITY": "3") séparé par `:` représente les champs de l'objet

* Séparé par des virgules

```csv
{
  "PRIORITY": "3",
  "SYSLOG_FACILITY": "4",
  "SYSLOG_IDENTIFIER": "sshd",
  "SYSLOG_PID": "691346",
  "SYSLOG_TIMESTAMP": "Jan 31 02:47:04 ",
  "_BOOT_ID": "71c1ad36d98a411580846ed8f5f7ff49",
  "_CAP_EFFECTIVE": "3fffffffff",
  "_COMM": "sshd",
  "_GID": "0",
  "_MACHINE_ID": "87307f42baa349d89a2a2686294d771d",
  "_PID": "691346",
  "_SELINUX_CONTEXT": "unconfined\n",
  "_SOURCE_REALTIME_TIMESTAMP": "1612061224076751",
  "_SYSTEMD_CGROUP": "/system.slice/ssh.service",
  "_SYSTEMD_INVOCATION_ID": "7996ad9bf85c48d79d229a341aba09cb",
  "_SYSTEMD_SLICE": "system.slice",
  "_SYSTEMD_UNIT": "ssh.service",
  "_TRANSPORT": "syslog",
  "_UID": "0",
  "__MONOTONIC_TIMESTAMP": "6433679966661",
  "__REALTIME_TIMESTAMP": "1612061224076793",
  "host": "ranomafana",
  "message": "error: kex_exchange_identification: read: Connection reset by peer",
  "source_type": "journald",
  "timestamp": "2021-01-31T02:47:04.076751Z"
}
```

:three: ML - Markup Language

| Nom  | Literal                          |   Utilisation                  |
|------|----------------------------------|--------------------------------|
| HTML | HyperText Markup Language        | Rare                           |
| XML  | eXtensible Markup Language       | Ouvert, extensible             |
| YAML | YAML Ain't Markup Language       | Ouvert, extensible peu verbeux |
| TOML | Tom's Obvious, Minimal Language. | Ouvert, extensible peu verbeux |


```xml
<eleve>
   <nom>moyou</nom>
  <prenom>bertrand</prenom>
</eleve>
```


```yaml
---
version: '2'
services:
  zookeeper:
    image: confluentinc/cp-zookeeper:5.4.0
    hostname: zookeeper
    container_name: zookeeper
```
 



## References

20140815-01-endsatis-fra.csv


https://stackoverflow.com/questions/29663187/csv-to-json-using-jq

