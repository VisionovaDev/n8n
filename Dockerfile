FROM n8nio/n8n

USER root

# Installa Chromium e dipendenze su Alpine
RUN apk update && apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    nodejs \
    npm

# Crea directory e assegna permessi a node
RUN mkdir -p /data && chown node:node /data

# Impedisce il download automatico di Chromium durante installazione Puppeteer
ENV PUPPETEER_SKIP_DOWNLOAD=true

# Installa Puppeteer globalmente
RUN npm install -g puppeteer

# Imposta utente node e directory di lavoro
USER node
WORKDIR /home/node