## Context

Ce projet a été réalisé dans le cadre de mon parcours de formation 'Data Engineer' avec OpenClassrooms.

Titre du projet :

`Construisez et testez une infrastructure de données`

Ce projet consiste en la conception et l'implémentation d'une plateforme de données cloud permettant l'intégration de données météorologiques issues de plusieurs sources hétérogènes.

Un pipeline ELT basé sur Airbyte assure l'ingestion automatisée des données vers une base PostgreSQL hébergée sur AWS, tandis que dbt est utilisé pour la transformation, la modélisation analytique, la documentation et les contrôles de qualité.

L'architecture mise en place garantit l'automatisation des flux, la traçabilité des transformations et la mise à disposition de données fiables pour les usages analytiques.


# Flux de données

![Flux de données](images/flux.png)

# Architecture AWS

![Architecture AWS](images/infra.png)

[Lien](https://docs.google.com/presentation/d/1ItOEW_ZTM2ecYZj3CVo8IQgFGeuddFgCQs51-JQUdH4/edit?usp=sharing) du support de présentation avec les captures d'écran des éléments cloud configurés.
