#!/bin/bash

# Funções auxiliares
function install_dependencies() {
    echo "Instalando dependências..."
    sudo apt-get update
    sudo apt-get install -y nginx docker.io docker-compose git
}

function create_directories() {
    echo "Criando diretórios necessários..."
    mkdir -p ~/desafio_opencms_edson
    cd ~/desafio_opencms_edson || exit
    mkdir dockermount
}

function download_docker_compose() {
    echo "Baixando docker-compose..."
    curl -L https://github.com/docker/compose/releases/download/v1.29.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
}

function configure_docker_compose() {
    echo "Configurando docker-compose.yml..."
    cat << EOF > docker-compose.yml
version: '3'
services:
  mariadb:
    image: mariadb:latest
    container_name: mariadb
    init: true
    restart: always
    volumes:
      - ~/dockermount/opencms-docker-mysql:/var/lib/mysql
    environment:
      - MYSQL_ROOT_PASSWORD=secretDBpassword
  opencms:
    image: alkacon/opencms-docker:18.0
    container_name: opencms
    init: true
    restart: always
    depends_on: [ "mariadb" ]
    links:
      - "mariadb:mysql"
    ports:
      - "80:8080"
    volumes:
      - ~/dockermount/opencms-docker-webapps:/container/webapps
    command: ["/root/wait-for.sh", "mysql:3306", "-t", "30", "--", "/root/opencms-run.sh"]
    environment:
      - DB_PASSWD=secretDBpassword
EOF
}

function run_opencms() {
    echo "Iniciando OpenCms e MariaDB..."
    cd ~/desafio_opencms_edson || exit
    docker-compose up -d
    echo "OpenCms iniciado com sucesso!"
}

function login_opencms() {
    echo "Acessando OpenCms..."
    open http://localhost/login/
}

# Execução principal
echo "Automatizando instalação e configuração de OpenCms..."

install_dependencies
create_directories
download_docker_compose
configure_docker_compose
run_opencms
login_opencms

echo "Instalação concluída! Acesse http://localhost/login/"