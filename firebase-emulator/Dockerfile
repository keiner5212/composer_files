# Usa Node.js como base
FROM node:20-alpine

# Establece el directorio de trabajo
WORKDIR /firebase

# Instala Java (necesario para Firebase Emulator)
RUN apk add --no-cache openjdk17-jre

# Instala Firebase CLI globalmente
RUN npm install -g firebase-tools

# Copia el entrypoint y le da permisos de ejecución
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Usa el entrypoint para ejecutar Firebase Emulator
ENTRYPOINT ["/entrypoint.sh"]
