# Use a imagem base do Ubuntu
FROM ubuntu:latest

# Instale as dependências necessárias
RUN apt-get update && \
    apt-get install -y nasm qemu-system-x86 make && \
    apt-get clean

# Crie os diretórios para o código-fonte e build
RUN mkdir -p /app/src /app/build

# Copie o código-fonte e o Makefile para o contêiner
COPY src /app/src
COPY Makefile /app/

# Defina o diretório de trabalho
WORKDIR /app

