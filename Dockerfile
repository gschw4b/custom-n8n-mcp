FROM n8nio/n8n:latest

# Cria a pasta de nós customizados
WORKDIR /home/node/.n8n/custom

# Instala o pacote diretamente na pasta dos nós customizados
RUN npm install @n8n/n8n-nodes-langchain

# Garante que os nós personalizados sejam carregados
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom

# Volta para o diretório padrão de execução
WORKDIR /data

# Inicia o n8n
CMD ["n8n"]
