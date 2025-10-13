# Imagem base
FROM python:3.11-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do projeto
COPY . .

# Expõe a porta padrão do Django
EXPOSE 8000

# Comando padrão para iniciar o servidor
CMD ["gunicorn", "meu_projeto.wsgi:application", "--bind", "0.0.0.0:8000"]
