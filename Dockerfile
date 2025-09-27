# Dockerfile
FROM python:3.12-slim

# Définir le dossier de travail
WORKDIR /app

# Copier backend et requirements
COPY backend/ ./backend/
COPY backend/requirements.txt ./backend/

# Aller dans backend et installer les dépendances
WORKDIR /app/backend
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Exposer le port par défaut de Railway
ENV PORT 8000
EXPOSE 8000

# Commande pour lancer Django via gunicorn
CMD ["gunicorn", "backend.wsgi:application", "--bind", "0.0.0.0:8000"]
