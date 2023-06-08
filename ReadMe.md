# Projet DS51 : Modélisation de la connaissance et des données

## Description du projet

Ce projet a pour but de mettre en place un système de recommandation d'images d'animaux. 

L'usage de l'apprentissage supervisé en Machine Learning offre aux ordinateurs, entre autres, la capacité d'apprendre à identifier automatiquement des objets grâce à des données étiquetées. 
Les résultats des algorithmes les plus avancés, comme les réseaux de neurones profonds, sont stupéfiants.

Cependant, ces algorithmes demandent un grand nombre d'exemples pour leur phase d'apprentissage. 
En outre, lorsqu'ils sont employés pour étiqueter de nouvelles données, ils ne peuvent pas expliquer le raisonnement derrière leur décision. 
Ils peuvent néanmoins fournir un score qui représente la probabilité que leur décision soit correcte, ou indiquer la portion de la donnée qui a influencé leur décision.

Dans ce projet, nous supposons que les ontologies peuvent en partie surmonter ces deux obstacles scientifiques.

## Ontologie

Récupération des données sur Wikidata par une requête SPARQL, puis création de l'ontologie avec `owlready2`.

## Modèle

Utilisation d'un modèle de réseau de neurones convolutif entrainé sur une partie des images du dataset ImagesNet.


## Rapport

Le rapport est disponible [ici](https://github.com/thibault-chausson/DS51_Projet/blob/main/Rapport/Projet_DS51.pdf).


## Installation

### Prérequis

- Python 3.8
- pip
- virtualenv
- git

### Installation

1. Cloner le projet
2. Créer un environnement virtuel
3. Installer les dépendances
4. Lancer le projet
