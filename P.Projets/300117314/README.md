
# :zap: How to install Redis on our Ubuntu server using Docker:zap: 
:star:First we check our Docker status using the command:
```
docker run -it ubuntu /bin/bash
```
<img src=images/1.PNG  alt="alt text" width="400" height="250">


:star:Then we check our Docker status using the command:
```
docker ps -l
```
<img src=images/1.png  alt="alt text" width="4000" height="250">

:star:Now we run the docker using :
```
docker start [image-name]
```
<img src=images/9.PNG  alt="alt text" width="650" height="250">


:star:Let’s first update apt-get with the following command:


```
apt-get update
```
<img src=images/3.PNG  alt="alt text" width="650" height="550">

:star:When that’s finished we’ll run the upgrade::

<img src=images/4.PNG  alt="alt text" width="650" height="550">


## :zap:Install Redis using the apt-get Package Manager :zap:

```
apt-get install redis-server
```

<img src=images/5.PNG  alt="alt text" width="650" height="500">

##

:star: Make a copy of the config file just in case

<img src=images/6.PNG  alt="alt text" width="650" height="250">

##

## :zap:Start Redis :zap:

:pushpin: Now we will start Redis! Note: It will take over this terminal but we’ll continue in another terminal(Redis CLI).
```
redis-server
```

<img src=images/7.PNG  alt="alt text" width="650" height="500">


## :zap:Run the Redis CLI ( Command Line Interface ) :zap:
```
redis-cli
```
:star:You should see a prompt like this:
```
127.0.0.1:6379>
```

<img src=images/11.PNG  alt="alt text" width="350" height="350">

##

:star:First we’ll do the most basic Redis command just to verify it’s working. If we execute the ping command it should respond with “PONG”. Let’s try it:

<img src=images/12.PNG  alt="alt text" width="350" height="300">


