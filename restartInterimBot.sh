#!/bin/sh
# RECHARGE LE BOT

# navigue dans le bon dossier
cd && cd "/home/$(whoami)/Documents/interimBot" || exit

# stopppe le conteneur
docker stop interim_bot_1

# supprime le conteneur
docker rm interim_bot_1

# supprime l'image
docker image rm interim_bot

# reconstruit l'image
docker build -t interim_bot .

# lance le nouveau conteneur
docker run -d --name interim_bot_1 interim_bot

# fin
cd || exit
