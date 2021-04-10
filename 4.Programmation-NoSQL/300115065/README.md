(base) PS C:\Users\akram fadde> docker container run `
         --name some-mysqlds `
         --env MYSQL_ROOT_PASSWORD=password `
         --publish 3306:3306 `
         --publish 33060:33060 `
         --detach `
         mysql/mysql-server:latest
e50b9a561ed0e7809ec928d333ecd7e11220f4b00de417ae6cc1bfd3de219ddb

(base) PS C:\Users\akram fadde> docker container exec --interactive some-mysqlds mysql `
>>                         --user root --password=password `
>>                         --execute "CREATE DATABASE world_x;"
mysql: [Warning] Using a password on the command line interface can be insecure.

(base) PS C:\Users\akram fadde> docker container exec --interactive some-mysqlds `
>>                 mysql --user root --password=password `
>>                 --execute "CREATE USER 'root'@'172.17.0.1' IDENTIFIED BY 'password';"
mysql: [Warning] Using a password on the command line interface can be insecure.

(base) PS C:\Users\akram fadde> docker container exec --interactive some-mysqlds `
>>                 mysql --user root --password=password `
>>                 --execute "GRANT ALL ON *.* TO 'root'@'172.17.0.1';"
mysql: [Warning] Using a password on the command line interface can be insecure.

(base) PS C:\Users\akram fadde> pip install mysql-connector-python
Collecting mysql-connector-python
  Downloading mysql_connector_python-8.0.23-cp38-cp38-win_amd64.whl (854 kB)
     |████████████████████████████████| 854 kB 6.4 MB/s
Collecting protobuf>=3.0.0
  Downloading protobuf-3.15.8-py2.py3-none-any.whl (173 kB)
     |████████████████████████████████| 173 kB 3.3 MB/s
Requirement already satisfied: six>=1.9 in c:\tools\anaconda3\lib\site-packages (from protobuf>=3.0.0->mysql-connector-python) (1.15.0)
Installing collected packages: protobuf, mysql-connector-python
Successfully installed mysql-connector-python-8.0.23 protobuf-3.15.8

(base) PS C:\Users\akram fadde> pip show mysql-connector-python
Name: mysql-connector-python
Version: 8.0.23
Summary: MySQL driver written in Python
Home-page: http://dev.mysql.com/doc/connector-python/en/index.html
Author: Oracle and/or its affiliates
Author-email:
License: GNU GPLv2 (with FOSS License Exception)
Location: c:\tools\anaconda3\lib\site-packages
Requires: protobuf
Required-by:
(base) PS C:\Users\akram fadde>
