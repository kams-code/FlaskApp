# Utilisation de l'image Python officielle comme base
FROM python:3.9-slim

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le fichier de dépendances (requirements.txt) dans le conteneur
COPY requirements.txt /app/

# Installer les dépendances depuis le fichier requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application Flask dans le conteneur
COPY . /app/

# Exposer le port 5000 pour l'application Flask
EXPOSE 5000

# Définir la commande pour exécuter l'application Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
