# Usar uma imagem base oficial do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo requirements.txt e instalar as dependências
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante dos arquivos da aplicação para o diretório de trabalho
COPY . .

# Definir a variável de ambiente para o Redis
ENV REDIS_HOST=redis

# Expor a porta que a aplicação usa
EXPOSE 8000

# Comando para rodar a aplicação
CMD ["python", "app.py"]

