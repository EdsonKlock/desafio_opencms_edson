# desafio_opencms_edson
# Você deve instalar e configurar o OpenCMS
# Link para a documentação do OpenCMS: [OpenCMSDocumentation]
(http://www.opencms.org/en/)

# Instalação do OpenCms 8.0.4
file:///home/klock/Downloads/projeto/opencms_8.0.4/install.html#a1

# Comando para Instal nginox
sudo apt-get update
sudo apt-get install nginx


# Tentei instalar para utilizar Postgrel não consegui acesso a porta 
# (http://localhost/login/)
# ![alt text](image.png) 
# depois de varias tentativas e ajustei achei por bem usar o mariadb


# Imagem oficial do Docker OpenCms
https://github.com/alkacon/opencms-docker/tree/master

Etapa 1: docker-compose.yml
Salve o seguinte arquivo docker-compose.yml na sua máquina host.

# criei os diretorios 
Nome desafio_opencms_edson

# coloquei yml com nome docker-compose.yml
istalei docker
~$ sudo apt  install docker.io 
~$ sudo apt  install docker-compose

~$ docker-compose --version
docker-compose version 1.29.2, build unknown

~/desafio_opencms_edson$ ls
docker-compose.yml  nginx
~$ vim docker-compose.yml

~$ docker-compose up
# ~$ docker-comspose down

# Inicie o OpenCms e o MariaDB
# Navegue até a pasta com o arquivo docker-compose.yml e execute 
~$ docker-compose up -d.

# A inicialização levará algum tempo, pois vários módulos estão instalados.

# Você pode acompanhar o processo de instalação com 
~$ docker-compose logs -f opencms.

# Faça login no OpenCms
# Quando os contêineres estiverem configurados, você poderá acessar o OpenCms via http://localhost/system/login.

# A conta padrão é nome de usuário Admin senha admin.
