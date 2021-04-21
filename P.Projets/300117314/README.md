
# :zap: How to install Redis on our Ubuntu server using Docker:zap: 
:star:First we check our Docker status using the command:
```
docker ps -l
```

<img src=images/1.png  alt="alt text" width="800" height="150">


:star:Now we run the docker using :
```
docker start [image-name]
```
<img src=images/9.PNG  alt="alt text" width="650" height="250">


:star:Using our docker image :

```
docker run -it ubuntu /bin/bash
```
<img src=images/100.PNG  alt="alt text" width="650" height="250">

##
:star:Let’s first update apt-get with the following command:


```
apt-get update
```
<img src=images/3.PNG  alt="alt text" width="650" height="500">

:star:When that’s finished we’ll run the upgrade:
```
apt-get upgrade
```

<img src=images/4.PNG  alt="alt text" width="650" height="550">


## :zap:Install Redis using the apt-get Package Manager :zap:

```
apt-get install redis-server
```

<img src=images/5.PNG  alt="alt text" width="750" height="650">

##

:star: Make a copy of the config file just in case

`
 cp /etc/redis/redis.conf etc/redis/redis.conf.default
`

##

<img src=images/6.PNG  alt="alt text" width="750" height="150">

##

## :zap:Start Redis :zap:

:pushpin: Now we will start Redis! Note: It will take over this terminal but we’ll continue in another terminal(Redis CLI).
```
redis-server
```

<img src=images/7.PNG  alt="alt text" width="750" height="500">


## :zap:Run the Redis CLI ( Command Line Interface ) :zap:
```
redis-cli
```
:star:You should see a prompt like this:
```
127.0.0.1:6379>
```

<img src=images/11.PNG  alt="alt text" width="450" height="250">

##
:star:If you receive error like this:

<img src=images/15.PNG  alt="alt text" width="550" height="250">


##

Execute following commonds:

```
redis-server --daemonize yes
ps -aux | grep redis
redis-cli
```
<img src=images/1100.PNG  alt="alt text" width="850" height="250">

##

:star:First we’ll do the most basic Redis command just to verify it’s working. If we execute the ping command it should respond with “PONG”. Let’s try it:

<img src=images/12.PNG  alt="alt text" width="350" height="300">

:star: How to check the port:
```
CONFIG GET port

```
<img src=images/101.PNG  alt="alt text" width="750" height="300">

:star:How to create the key value:

```
set user "morti"

```
##
<img src=images/55.PNG  alt="alt text" width="450" height="300">

:star:How to check the key value:

```
get user 

```
##
<img src=images/56.PNG  alt="alt text" width="450" height="300">

##

:star:How to create a usernsme and setting a expiry periode of time based on seconde:

```
set username "morti747" EX 10

```
##
<img src=images/57.PNG  alt="alt text" width="850" height="200">

:star: we can verify if our username is still valid or not:
here we can see that after 10 seconds, it has been deleted from our redis-server.
nil means it doesn't exist. 

##
<img src=images/58.PNG  alt="alt text" width="850" height="250">

##

:star: Command ` exist ` is used to verify if a key exist our not. In this case we know that the key user exists, 
but username has been expired after 10 seconds
so :

```
 exists user
```
```
 exists username

```

##
<img src=images/59.PNG  alt="alt text" width="850" height="350">


:star:How to delete a key:

```
del user

```
:star: let's check
```
 exists user
```
##
<img src=images/60.PNG  alt="alt text" width="850" height="350">



##resources:
:link: https://www.youtube.com/watch?v=ZkwKyUZWkp4 
