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

```toml
$ cat <<-'VECTORCFG' > /etc/vector/vector.toml
# Vector's API for introspection
[api]
enabled = true
address = "127.0.0.1:8686"

# Host-level logs
[sources.logs]
type = "journald"

# Host-level metrics (cpu, memory, disk, etc)
[sources.host_metrics]
type = "host_metrics"

# Vector's own internal metrics
[sources.internal_metrics]
type = "internal_metrics"

# --> Add transforms here to parse, enrich, and process data

# print all events, replace this with your desired sink(s)
# https://vector.dev/docs/reference/sinks/
[sinks.out]
type = "console"
inputs = [ "logs", "host_metrics", "internal_metrics" ]
encoding.codec = "json"
VECTORCFG
```

* redémarrer le service

```
$ sudo systemctl restart vector
```


:round_pushpin: localement

```
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.vector.dev | sh
```

modifier son `~/.profile`

```
export PATH="$HOME/.vector/bin:$PATH"
```


```
$ cp kafka_journald.toml ~/.vector/config
```


```
$ vector --config ~/.vector/config/kafka_journald.toml
```
