
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


## :zap: This is our topology :zap:
:star: we will use one router and one switch with three vlans and each vlan will receive IP address directly from DHCP server configured on my router.
<img src=images/1.PNG  alt="alt text" width="650" height="500">


#  :pushpin: Configuration of Router:

## :one: Connecrting remotely using SSH: 
:star: Connecting to our router from distance usign this set of commands. SSH helps us to connect to our router with our username and password: 
