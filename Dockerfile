FROM n8nio/n8n:latest

# Instala os pacotes customizados
RUN npm install --location=global @n8n/n8n-nodes-langchain

# Garante que os nós personalizados sejam carregados
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom
