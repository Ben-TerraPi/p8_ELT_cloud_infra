## Context

Ce projet a été réalisé dans le cadre de mon parcours de formation 'Data Engineer' avec OpenClassrooms.

Titre du projet :

`Construisez et testez une infrastructure de données`

## Installations

### Docker

[Docker Desktop](https://www.docker.com/products/docker-desktop/) (windows/mac)
[Docker Engine](https://docs.docker.com/engine/install/) (Linux)

# Conteneurisation avec Docker

## Fonctionnement

**Docker** permet d’exécuter l'application dans un environnement isolé, appelé « conteneur », qui contient tout ce dont elle a besoin (Python, dépendances, code…).

**Docker Compose** permet de lancer plusieurs conteneurs qui communiquent ensemble (ici : un pour MongoDB, un pour le script Python).

## Structure des fichiers importants

- **Dockerfile** : décrit comment construire l’image de l'application Python.
- **docker-compose.yml** : décrit comment lancer les différents conteneurs (MongoDB + application).
- **requirements.txt** : liste les librairies Python à installer dans le conteneur.