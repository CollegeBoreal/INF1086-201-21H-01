# Vector

[What is vector?](https://vector.dev/docs/about/what-is-vector/)


## :gear: Installation 

:round_pushpin: avec un [`Package Manager`](https://vector.dev/docs/setup/installation/package-managers) 



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
