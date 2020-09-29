# Imagen base
FROM node:latest

# Carpeta raíz del contenedor
WORKDIR /app

# Copiado de archivos
ADD build/default /app/build/default
ADD server.js /app
ADD package.json /app
# ADD /img/algo...

# Dependencias
RUN npm install

# Puerto que exponemos
EXPOSE 3000

# Commandos para ejecutar la aplicación

CMD ["npm", "start"]
