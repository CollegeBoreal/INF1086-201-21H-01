# 📌 Install Couchbase server 7.0 community on Windows

💡 Couchbase Server community

```
The open source foundation of NoSQL data platform is available free of charge for both development and production, and supported by the Couchbase community forum,
Best suited for non-enterprise developers when basic education, availability, performance, tooling, and query is sufficient
```

## :one: install Couchbase Server using the command line

### 📍 Download the appropriate package from the Couchbase download page

```
https://packages.couchbase.com/releases/7.0.0-beta/couchbase-server-community_7.0.0-beta-windows_amd64.msi
```
📌 Using Docker 

```
docker run -t --name db -p 8091-8094:8091-8094 -p 11210:11210 couchbase/server-sandbox:6.0.0
```

### 📍 Install Couchbase Server

```
start /wait msiexec /i couchbase.msi /qn
```

## :two: Create a Cluster

💡 Provision a Node with the CLI

To provision a node with the CLI, use the cluster-init command, as follows:

```
couchbase-cli cluster-init -c 10.142.181.101 \
--cluster-username Administrator \
--cluster-password password \
--services data,index,query \
--cluster-ramsize 512 \
--cluster-index-ramsize 256
```
Node is successfully provisioned
```

![image](./node.png)

```

## :three: Add a Node and Rebalance with the CLI

```
couchbase-cli server-add -c 10.142.181.101:8091 \
--username Administrator \
--password password \
--server-add 10.142.181.102:8091 \
--server-add-username someName \
--server-add-password somePassword \
--services data
```
