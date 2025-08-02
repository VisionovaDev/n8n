FROM n8nio/n8n

USER root

# Installa Chromium e dipendenze
# RUN apk update && apk add --no-cache \
#     nss \
#     freetype \
#     harfbuzz \
#     ca-certificates \
#     ttf-freefont \
#     nodejs \
#     npm \
#     curl \
#     openssl \
#     bash
RUN apk update && apk add --no-cache bind-tools netcat-openbsd curl bash
# Impedisce il download automatico di Chromium durante installazione Puppeteer
ENV PUPPETEER_SKIP_DOWNLOAD=true

# Installa Puppeteer
RUN npm install -g puppeteer