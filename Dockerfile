# Utilise l'image officielle Python
FROM python:3.11-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers requirements (si tu en as) ou crée un requirements.txt temporaire
COPY backend/requirements.txt .

# Installe les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copie tout le backend dans le conteneur
COPY backend/ .

# Expose le port utilisé par Django
EXPOSE 8000

# Commande pour lancer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
