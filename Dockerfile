# 1. Choix de l'image de base Node.js Alpine pour la légèreté (Bonne pratique)
FROM node:20-alpine

# 2. Définition du répertoire de travail
WORKDIR /usr/src/app

# 3. Copie des fichiers de configuration pour l'installation des dépendances
COPY package*.json ./

# 4. Installation des dépendances
RUN npm install

# 5. Copie du code source
COPY app.js ./

# 6. Exposition du port 3000
EXPOSE 3000

# 7. Commande de démarrage
CMD ["npm", "start"]


