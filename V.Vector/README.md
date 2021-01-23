# Vector

[What is vector?](https://vector.dev/docs/about/what-is-vector/)


## :gear: Installation 

:round_pushpin: avec un [`Package Manager`](https://vector.dev/docs/setup/installation/package-managers) `apt`

- [ ] Installer le référentiel de `vector`

```
$ curl -1sLf \
  'https://repositories.timber.io/public/vector/cfg/setup/bash.deb.sh' \
  | sudo -E bash
```

- [ ] Installer `vector`

```
$ sudo apt-get install vector
```

- [ ] Installer le fichier de configuration

* passer en mode super utilisateur

```
$ sudo su -
```

* installer le fichier

https://vector.dev/docs/reference/sinks/kafka/

```toml

$ cat << EOF > /etc/vector/vector.toml
# Vector's API for introspection
[api]
enabled = true
address = "10.13.237.9:8686"

# Host-level logs
[sources.logs]
type = "journald"

# --> Add transforms here to parse, enrich, and process data

# print all events, replace this with your desired sink(s)
# https://vector.dev/docs/reference/sinks/
[sinks.kafka]
  # General
  type = "kafka" # required
  inputs = [ "logs" ]
  bootstrap_servers = "10.13.237.9:9092" # required
  compression = "none" # optional, default
  key_field = "" # required
  topic = "topic-journald" # required

  # Batch

  # Encoding
  encoding.codec = "json" # required
EOF
```

* redémarrer le service

```
$ sudo systemctl restart vector
```

* Observer le résultat

```
$ sudo journalctl --unit vector --follow
```

* Observer le résultat

http://10.13.237.9:8686/playground
