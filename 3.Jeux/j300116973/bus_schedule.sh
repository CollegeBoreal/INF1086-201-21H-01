#!/bin/bash

function main {
   echo "Copy de fichier"
   for bus_schedule in bus_schedule*.json
   do
     docker exec --interactive kafka kafka-console-producer --broker-list kafka:9092 --topic bus-sched <  ./$bus_schedule
   done
}

main


