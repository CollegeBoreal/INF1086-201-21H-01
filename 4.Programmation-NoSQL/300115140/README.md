
# Programmation MySQLsh en Python



Dans ce tutoriel, tu vas créer un programme utilisant les APIs de MySQL X Dev API en Python
=======
# X Dev API Lab Guide for MySQL Shell in Python mode

**A. Introduction**

Doing a lab with X Dev API takes some time and  went to different processes to get it done.
Before starting the hard work, be sure to downlaod first the following:

- Python (or install the latest version) - PS> choco install anaconda3
<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/anaco.PNG" width="550">

- Git (check your version on git --version)
<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/git.PNG" width="550">

- Docker Desktop (install with Powershel - PS> choco install docker-desktop -y)
<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/dd.PNG" width="550">

**B. Running the Python code and changing the variables:**

I am using Visual Code where I run the Python code. The main file I will be using are b000000000.py and b000000000.json  (that will be chnage to b300115140.py and b300115140.json).
We then installed XDeV API into Python. 
We have created the MySQL Server and run a database file called world_x (open source). We will connect with this Database with the sessionvaraible:
```
session = mysqlx.get_session({
    "host": "localhost",
    "port": 33060,
    "user": "root",
    "password": "password"
})
```

When we execute the program with the diffrent functions, we can see something like this:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/visual1.PNG" width="550">

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/visual2.PNG" width="550">

**C. Running the code**

When we run the programm through Powershell:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/PS1.PNG" width="550">

or thorugh gitbash:

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/bash1.PNG" width="550">

**D. Adding my own collection**

I decided to add my own collection in this exercice (adding to the file b300115140.sql)
I will have a register of International Students at Boreal, going through their first year in an I.T.program. I created a table and insert different information (15 information as name, id, city or date).

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/regist.PNG" width="550">

<img src="https://github.com/CollegeBoreal/INF1086-201-21H-01/blob/main/4.Programmation-NoSQL/300115140/IMAGES/insert.PNG" width="550">









