# STREAM ET TABLE :hotsprings:

## :one: CREATION DU STREAM NOMMÉ `ZOURENI_STREAM`

![image](images/ZOURENI_STREAM.png)
```
```

AFFICHONS NOS STREAMS CRÉÉS :page_facing_up:

![image](images/STREAMS.png)
```
```

IMPRIMONS LES DÉTAILS DE NOTRE STREAM :page_with_curl:

:heavy_exclamation_mark: REMARQUE : NOTRE STREAM **N’A PAS DE CLÉ** (KEY FIELD)

![image](images/DESCRIBE_STREAM.png)
`~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
```
```

## :two: CREATION DE LA TABLE 

- QUI CAPTURE LES MESSAGES :incoming_envelope: :
   - OUVERTURE DE SESSION PAR SSH, DOCKER-MACHINE SSH ET LOCALEMENT
   - FERMETURE DE SESSION

![image](images/ZOURENI_TABLE.png)
```
```

IMPRIMONS LES DÉTAILS DE NOTRE TABLE :page_with_curl:

:rotating_light: REMARQUE : NOTRE TABLE A UNE **CLÉ (KEY FIELD)** :key: QUI EST `MESSAGE`

![image](images/DESCRIBE_TABLE.png)
```
```
EXEMPLE DES RESULTATS QUI SERONT IMPRIMÉS DANS LA TABLE :clipboard:

![image](images/RESULTAT_TABLE.png)
