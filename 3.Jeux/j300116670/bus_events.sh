#!/bin/bash

function main {
   echo "Copy de fichier"
   for bus_event in bus_events*.json 
   do
     docker exec --interactive kafka kafka-console-producer --broker-list kafka:9092 --topic bus-events <  ./$bus_event
   done
}

main


