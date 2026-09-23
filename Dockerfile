# 1. Qual imagem base vamos usar? (Python oficial, versao 3.12)
FROM python:3.12-slim

# 2. Em qual pasta a aplicacao vai morar dentro do container?
WORKDIR /app

# 3. Copia os arquivos de dependencias e instala
COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copia o resto do codigo fonte
COPY . .

# 5. Qual porta a aplicacao usa?
EXPOSE 5000

# 6. Comando para ligar a aplicacao
CMD {"python", "ativ_python_calculadora2/src/calculadora.py"}