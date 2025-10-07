FROM n8nio/n8n:latest

# Fixer les permissions avant le lancement
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod 600 /home/node/.n8n/config || true

USER node
CMD ["n8n", "start"]
