#!/bin/bash

# Se placer dans le dossier backend
cd backend

# Installer les dépendances Python
pip install -r requirements.txt

# Lancer Django avec gunicorn
# Le $PORT est fourni automatiquement par Railway
gunicorn backend.wsgi:application --bind 0.0.0.0:$PORT
