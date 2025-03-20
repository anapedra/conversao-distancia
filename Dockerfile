# Usa uma imagem base do Python
FROM python:3.9

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . .

# Instala as dependências
RUN pip install -r requirements.txt

# Expõe a porta 5000 (onde a aplicação rodará)
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py", "--host=0.0.0.0"]
