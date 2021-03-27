# Cat
## Load files (kafkacat)

https://www.csvjson.com/csv2json

![alt tag](./Minify.png)

```
$ docker run --interactive \
           --network 300098957_default \
           confluentinc/cp-kafkacat \
            kafkacat -b kafka:29092 \
                    -t my_topic \
                    -K: \
                    -P <<EOF
{"Date":"2019-01-08","Open":7.53,"High":7.6,"Low":7.35,"Close":7.41,"Adj Close":7.41,"Volume":3960900}
{"Date":"2019-01-09","Open":7.44,"High":7.51,"Low":7.38,"Close":7.47,"Adj Close":7.47,"Volume":3316800}
{"Date":"2019-01-10","Open":7.4,"High":7.54,"Low":7.33,"Close":7.52,"Adj Close":7.52,"Volume":2404600}
{"Date":"2019-01-11","Open":7.49,"High":7.65,"Low":7.48,"Close":7.57,"Adj Close":7.57,"Volume":2314300}
{"Date":"2019-01-14","Open":7.52,"High":7.57,"Low":7.44,"Close":7.49,"Adj Close":7.49,"Volume":2442100}
{"Date":"2019-01-15","Open":7.5,"High":7.56,"Low":7.45,"Close":7.53,"Adj Close":7.53,"Volume":1779500}
{"Date":"2019-01-16","Open":7.54,"High":7.71,"Low":7.52,"Close":7.66,"Adj Close":7.66,"Volume":3010200}
{"Date":"2019-01-17","Open":7.65,"High":7.7,"Low":7.57,"Close":7.69,"Adj Close":7.69,"Volume":2543400}
{"Date":"2019-01-18","Open":7.75,"High":7.91,"Low":7.74,"Close":7.86,"Adj Close":7.86,"Volume":3814800}
{"Date":"2019-01-22","Open":7.79,"High":7.88,"Low":7.57,"Close":7.6,"Adj Close":7.6,"Volume":3171400}
{"Date":"2019-01-23","Open":7.63,"High":7.79,"Low":7.62,"Close":7.72,"Adj Close":7.72,"Volume":2077100}
{"Date":"2019-01-24","Open":7.75,"High":7.85,"Low":7.73,"Close":7.77,"Adj Close":7.77,"Volume":1932900}
{"Date":"2019-01-25","Open":7.87,"High":8.1,"Low":7.82,"Close":8.1,"Adj Close":8.1,"Volume":2664400}
{"Date":"2019-01-28","Open":8.05,"High":8.09,"Low":7.96,"Close":8.01,"Adj Close":8.01,"Volume":2327000}
{"Date":"2019-01-29","Open":8.05,"High":8.1,"Low":7.91,"Close":7.96,"Adj Close":7.96,"Volume":2277900}
{"Date":"2019-01-30","Open":8.04,"High":8.13,"Low":7.92,"Close":8.13,"Adj Close":8.13,"Volume":2217700}
{"Date":"2019-01-31","Open":8.11,"High":8.18,"Low":8.02,"Close":8.07,"Adj Close":8.07,"Volume":2446500}
{"Date":"2019-02-01","Open":8.1,"High":8.15,"Low":8.02,"Close":8.11,"Adj Close":8.11,"Volume":2055800}
{"Date":"2019-02-04","Open":8.12,"High":8.25,"Low":8.1,"Close":8.22,"Adj Close":8.22,"Volume":1961400}
{"Date":"2019-02-05","Open":8.25,"High":8.38,"Low":8.25,"Close":8.34,"Adj Close":8.34,"Volume":1934600}
{"Date":"2019-02-06","Open":8.31,"High":8.37,"Low":8.26,"Close":8.31,"Adj Close":8.31,"Volume":2436100}
{"Date":"2019-02-07","Open":8.23,"High":8.25,"Low":8.07,"Close":8.1,"Adj Close":8.1,"Volume":2714400}
{"Date":"2019-02-08","Open":8.05,"High":8.19,"Low":8.03,"Close":8.185,"Adj Close":8.185,"Volume":1044851}
EOF

```


```
$ kafkacat -b 10.13.237.5:29092 \
           -t my_topic \
           -K: \
           -P <<EOF
{"Date":"2019-01-08","Open":7.53,"High":7.6,"Low":7.35,"Close":7.41,"Adj Close":7.41,"Volume":3960900}
{"Date":"2019-01-09","Open":7.44,"High":7.51,"Low":7.38,"Close":7.47,"Adj Close":7.47,"Volume":3316800}
{"Date":"2019-01-10","Open":7.4,"High":7.54,"Low":7.33,"Close":7.52,"Adj Close":7.52,"Volume":2404600}
{"Date":"2019-01-11","Open":7.49,"High":7.65,"Low":7.48,"Close":7.57,"Adj Close":7.57,"Volume":2314300}
{"Date":"2019-01-14","Open":7.52,"High":7.57,"Low":7.44,"Close":7.49,"Adj Close":7.49,"Volume":2442100}
{"Date":"2019-01-15","Open":7.5,"High":7.56,"Low":7.45,"Close":7.53,"Adj Close":7.53,"Volume":1779500}
{"Date":"2019-01-16","Open":7.54,"High":7.71,"Low":7.52,"Close":7.66,"Adj Close":7.66,"Volume":3010200}
{"Date":"2019-01-17","Open":7.65,"High":7.7,"Low":7.57,"Close":7.69,"Adj Close":7.69,"Volume":2543400}
{"Date":"2019-01-18","Open":7.75,"High":7.91,"Low":7.74,"Close":7.86,"Adj Close":7.86,"Volume":3814800}
{"Date":"2019-01-22","Open":7.79,"High":7.88,"Low":7.57,"Close":7.6,"Adj Close":7.6,"Volume":3171400}
{"Date":"2019-01-23","Open":7.63,"High":7.79,"Low":7.62,"Close":7.72,"Adj Close":7.72,"Volume":2077100}
{"Date":"2019-01-24","Open":7.75,"High":7.85,"Low":7.73,"Close":7.77,"Adj Close":7.77,"Volume":1932900}
{"Date":"2019-01-25","Open":7.87,"High":8.1,"Low":7.82,"Close":8.1,"Adj Close":8.1,"Volume":2664400}
{"Date":"2019-01-28","Open":8.05,"High":8.09,"Low":7.96,"Close":8.01,"Adj Close":8.01,"Volume":2327000}
{"Date":"2019-01-29","Open":8.05,"High":8.1,"Low":7.91,"Close":7.96,"Adj Close":7.96,"Volume":2277900}
{"Date":"2019-01-30","Open":8.04,"High":8.13,"Low":7.92,"Close":8.13,"Adj Close":8.13,"Volume":2217700}
{"Date":"2019-01-31","Open":8.11,"High":8.18,"Low":8.02,"Close":8.07,"Adj Close":8.07,"Volume":2446500}
{"Date":"2019-02-01","Open":8.1,"High":8.15,"Low":8.02,"Close":8.11,"Adj Close":8.11,"Volume":2055800}
{"Date":"2019-02-04","Open":8.12,"High":8.25,"Low":8.1,"Close":8.22,"Adj Close":8.22,"Volume":1961400}
{"Date":"2019-02-05","Open":8.25,"High":8.38,"Low":8.25,"Close":8.34,"Adj Close":8.34,"Volume":1934600}
{"Date":"2019-02-06","Open":8.31,"High":8.37,"Low":8.26,"Close":8.31,"Adj Close":8.31,"Volume":2436100}
{"Date":"2019-02-07","Open":8.23,"High":8.25,"Low":8.07,"Close":8.1,"Adj Close":8.1,"Volume":2714400}
{"Date":"2019-02-08","Open":8.05,"High":8.19,"Low":8.03,"Close":8.185,"Adj Close":8.185,"Volume":1044851}
EOF

```

