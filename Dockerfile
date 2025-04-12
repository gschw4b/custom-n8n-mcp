FROM n8nio/n8n:latest

# Diretório de trabalho local
WORKDIR /data/langchain-nodes

# Instala localmente
RUN npm install @n8n/n8n-nodes-langchain

# Cria a pasta de extensões customizadas e move os arquivos para lá
RUN mkdir -p /home/node/.n8n/custom && \
    cp -R node_modules/@n8n/n8n-nodes-langchain /home/node/.n8n/custom/n8n-nodes-langchain

# Variável de ambiente para usar extensões
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom
