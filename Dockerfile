FROM n8nio/n8n

USER root

RUN apk update && apk add --no-cache bind-tools netcat-openbsd curl bash


USER node