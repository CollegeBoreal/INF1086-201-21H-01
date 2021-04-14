#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only

   
echo "# Participation au `date +"%d-%m-%Y %H:%M"`"
echo ""


echo "| Table des matières            | Description                                             |"
echo "|-------------------------------|---------------------------------------------------------|"
echo "| :a: [Présence](#a-présence)   | L'étudiant.e a fait son travail    :heavy_check_mark:   |"
echo "| :b: [Précision](#b-précision) | L'étudiant.e a réussi son travail  :tada:               |"

echo ""
echo "## Légende"
echo ""

echo "| Signe              | Signification                 |"
echo "|--------------------|-------------------------------|"
echo "| :heavy_check_mark: | Prêt à être corrigé           |"
echo "| :x:                | Projet inexistant             |"


echo ""
echo "## :a: Présence"
echo ""
echo "|:hash:| Boréal :id:                | Python             | URL |"
echo "|------|----------------------------|--------------------|-----|"

OK=":heavy_check_mark:"
KO=":x:"

i=0

for id in "${ETUDIANTS[@]}"
do
   VALUE="| ${i} | ${id} - <image src='https://avatars0.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image> |"
  
   PYTHON_FILE=${id}/b${id}.py
   if [ -f "$PYTHON_FILE" ]; then
       VALUE="${VALUE} [${OK} ${id}](../${PYTHON_FILE}) |"
   else
       VALUE="${VALUE} ${KO} |"
   fi

   SQL_FILE=${id}/b${id}.sql
   if [ -f "$SQL_FILE" ]; then
       VALUE="${VALUE} [${OK} ${id}](../${SQL_FILE}) |"
   else
       VALUE="${VALUE} ${KO} |"
   fi

   URL="https://github.com/${GITHUBS[$i]}/lab-algorithme-du-bfs-en-python"
   curl -s ${URL} | grep "404 &ldquo;This is not the web page you are looking for&rdquo;" 2> /dev/null 1> /dev/null
   RESULT=$?
   if [ $RESULT==0 ]; then
       VALUE="${VALUE} [${OK} ${id}](${URL}) |"
   else
       VALUE="${VALUE} ${KO} |"
   fi

   echo ${VALUE}
   let "i++"

done
