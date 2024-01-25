# Projet BommBDD


## Introduction:
Ce projet consiste à élaborer la base de données (h3hitema) destinée à un site web de l'école H3hitema. Ce site offre aux étudiants la possibilité de s'inscrire et de consulter des informations telles que leurs notes et leur classe de cours, parmi d'autres fonctionnalités.

## Le fichier H3hitema.sql :
Le contenu de ce fichier englobe la création de la base de données (BDD) ainsi que la mise en place des tables, tout en observant les principes de la normalisation. De plus, le fichier inclut des instructions d'insertion de données, avec cinq enregistrements pour chaque table.

## Le fichier LesRequetes.sql :
Ce fichier regroupe l'ensemble des requêtes nécessaires pour répondre aux diverses demandes formulées dans le projet, utilisant les mots-clés SQL appropriés. Chaque requête est formulée afin de satisfaire une demande spécifique du projet, couvrant ainsi l'ensemble des opérations requises dans le contexte de la base de données.

## Le fichier ObjectSupplimentaires.sql :
Ce fichier contient:
- La partie de transaction ( Les transactions sont utilisées pour garantir l'intégrité des données et pour s'assurer que toutes les opérations à l'intérieur de la transaction sont effectuées avec succès avant d'être validées.)   
- La partie de VIEW ( Les vues permettent de simplifier les requêtes complexes, de définir un ensemble de données spécifique et de masquer la complexité des requêtes sous-jacentes).

## Une petite documentation:
La documentation comprend des explications détaillées sur les règles de la normalisation, des tests effectués sur la base de données (BDD), ainsi qu'un schéma Modèle Logique de Données (MLD) textuel. En outre, elle est illustrée par une capture d'écran de la BDD visualisée à travers l'interface de PhpMyAdmin.



# Documentation APP BONUS

## Installation
Pour lancer le server api
```
cd api 
npm install
npm run dev
```
Pour lancer l'application
```
cd frontend
npm install
npm run dev
```


# Links

### Prod link
* http://localhost:5000/api/v1/{ressource}/{action}
* exemple: http://localhost:5000/api/v1/student/get-all-student

### app frontend 
*  http://localhost:5173/

#
