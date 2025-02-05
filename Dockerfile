# usamos a imagem oficial do Python:
FROM python:3.12.7-alpine3.20

# O diretório de trabalho dentro do Container:
WORKDIR /app

#copinado o que precisamos para lá :
COPY app.py .
COPY requirements.txt .

# Instalando as dependências:
RUN pip install -r requirements.txt

# Expondo a porta:
EXPOSE 5000


# Comando para rodar a aplicação
CMD ["flask", "run", "--host=0.0.0.0"]
