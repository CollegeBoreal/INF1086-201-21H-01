# -*- coding: utf-8 -*-
"""

@author: 300115065
"""

import json

def charge(fichier):
   with open(fichier) as f:
      return json.load(f)

import mysqlx

session = mysqlx.get_session({
    "host": "localhost",
    "port": 33060,
    "user": "root",
    "password": "password"
})


db = session.get_schema("world_x")


def lecture(fichier):

  # Le nom de la collection temporaire
  nomColl = "temp"

  # Crée la collection temporaire maColl
  maColl = db.create_collection(nomColl)

  # charge le fichier dans la variable json
  json = charge(fichier)
    
  # Ajoute le contenu du fichier json dans la collection temporaire maColl
  maColl.add(json).execute()

  # Lis toute les documents convertis de la collection et les stocker dans la variable docs
  docs = maColl.find().execute()

  # Détruit la collection temporaire
  db.drop_collection(nomColl)

  # Retourne un dictionnaire Python du fichier json converti
  return docs



def former_des_chefs(docs):

  # Crée une nouvelle collection 'chefs_de_gouvernement'
  nomColl = 'chefs_de_gouvernement'
  maColl = db.create_collection(nomColl)


  # Ajout manuel
  maColl.add({"HeadOfState": "Marc Ravalomanana","GovernmentForm": "Republic"}).execute()


  # Manipuler la collection et la rajouter à la nouvelle
  for doc in docs.fetch_all():
    for country in doc.countries:
      # Insert des documents JSON de type government
      maColl.add(country['government']).execute()

  # Trouver tous les documents JSON et les mettre en mémoire
  docs = maColl.find().execute()

  # Détruit la collection
  #db.drop_collection(nomColl)

  return docs



def former_des_donnees(docs):

  # Crée une nouvelle collection 'Donnees_demographiques'
  nomColl = 'Donnees_demographiques'
  maColl = db.create_collection(nomColl)

# Ajout manuel
  maColl.add({"Population": 11937000,"LifeExpectancy": 46.70000076293945}).execute()
  maColl.add({"Population": 81340000,"LifeExpectancy": 69.47269439697275}).execute()
  maColl.add({"Population": 6097000,"LifeExpectancy": 50.20000076293945}).execute()
  
# Manipuler la collection et la rajouter à la nouvelle
  for doc in docs.fetch_all():
    for country in doc.countries:
      # Insert des documents JSON de type demographics
      maColl.add(country['demographics']).execute()
  # Trouver tous les documents JSON et les mettre en mémoire
  docs = maColl.find().execute()

  # Détruit la collection
  #db.drop_collection(nomColl)
 
  return docs

   
   
def main():
  docs = lecture('b300115065.json')
  chefs = former_des_chefs(docs)
  donnees = former_des_donnees(docs)
  print(len(docs.fetch_all()))
  # Ne pas oublier de remercier le gestionnaire de BD
  session.close


if __name__== "__main__":
    main()
