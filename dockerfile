# Usa una imagen oficial de Node.js
FROM node:18

# Crea el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia solo los archivos necesarios primero (mejor cache para Docker)
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código fuente
COPY . .

# Expón el puerto que tu app usa (Railway usará esto automáticamente si lo detecta)
EXPOSE 3000

# Comando por defecto para iniciar tu app
CMD ["node", "server.js"]
