FROM n8nio/n8n:latest

# Instala o nó customizado globalmente
RUN npm install --location=global @n8n/n8n-nodes-langchain

# Copia os nós para a pasta correta do n8n
RUN mkdir -p /home/node/.n8n/custom && \
    cp -R /usr/local/lib/node_modules/@n8n/n8n-nodes-langchain /home/node/.n8n/custom/n8n-nodes-langchain

# Define a pasta com extensões customizadas
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom
