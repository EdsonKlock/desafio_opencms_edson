<h1>DESAFIO VHL Sistemas 
<p>&nbsp;</p>
<figure class="image image_resized" style="width:11.43%;" data-ckbox-resource-id="agFVWKnzH20A">
    <picture>
        <source srcset="https://ckbox.cloud/54b1f6d739bb19fd0b9a/assets/agFVWKnzH20A/images/80.webp 80w,https://ckbox.cloud/54b1f6d739bb19fd0b9a/assets/agFVWKnzH20A/images/160.webp 160w,https://ckbox.cloud/54b1f6d739bb19fd0b9a/assets/agFVWKnzH20A/images/200.webp 200w" type="image/webp" sizes="(max-width: 200px) 100vw, 200px"><img src="https://ckbox.cloud/54b1f6d739bb19fd0b9a/assets/agFVWKnzH20A/images/200.jpeg" width="200" height="200">
    </picture>
</figure> </h1> 

<p align="center">
  <img src="https://img.shields.io/static/v1?label=react&message=framework&color=blue&style=for-the-badge&logo=REACT"/>
  <img src="https://img.shields.io/static/v1?label=Netlify&message=deploy&color=blue&style=for-the-badge&logo=netlify"/>
  <img src="http://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
  <img src="http://img.shields.io/static/v1?label=Ruby&message=2.6.3&color=red&style=for-the-badge&logo=ruby"/>
  <img src="http://img.shields.io/static/v1?label=Ruby%20On%20Rails%20&message=6.0.2.2&color=red&style=for-the-badge&logo=ruby"/>
  <img src="http://img.shields.io/static/v1?label=TESTES&message=%3E100&color=GREEN&style=for-the-badge"/>
   <img src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=RED&style=for-the-badge"/>
   <img src="http://img.shields.io/static/v1?label=STATUS&message=CONCLUIDO&color=GREEN&style=for-the-badge"/>
</p>

> Status do Projeto: :heavy_check_mark: :warning:

... 

# Descrição do projeto 

<p align="justify">
  Instalar e configurar o OpenCMS. 
</p>

# Funcionalidades

:objetivo final é que possamos acessar a instalação do
OpenCMS através do NGINX como proxy reverso. Por questões de simplicidade, não será
necessário disponibilizar a URL publicamente; basta criar um cenário no qual a URL esteja
configurada localmente, no arquivo hosts.

# Layout ou Deploy da Aplicação :dash:

> Link do deploy da aplicação. http://www.opencms.org/en/
... 

# Pré-requisitos

:warning: [OpenCMS](http://www.opencms.org/en/)

...

# Como rodar a aplicação :arrow_forward:

No terminal, Instale NGINX 

```
sudo apt-get update
sudo apt-get install nginx
```
... 

Salve o seguinte arquivo docker-compose.yml na sua máquina host.

# criei os diretorios 

Nome desafio_opencms_nome

Instale docker
```
~$ sudo apt  install docker.io 
~$ sudo apt  install docker-compose

~$ docker-compose --version
docker-compose version 1.29.2, build unknown

~/desafio_opencms_nome$ ls
docker-compose.yml  nginx
~$ vim docker-compose.yml

~$ docker-compose up 
```

# Casos de Uso

# Inicie o OpenCms e o MariaDB
# Navegue até a pasta com o arquivo docker-compose.yml e execute 
```
~$ docker-compose up -d.
```
# A inicialização levará algum tempo, pois vários módulos estão instalados.

# Você pode acompanhar o processo de instalação com 
```
~$ docker-compose logs -f opencms.
```

# Faça login no OpenCms
# Quando os contêineres estiverem configurados, você poderá acessar o OpenCms via http://localhost/system/login.

# A conta padrão é nome de usuário Admin senha admin, depois alterar senha.

# Para Acesso
http://localhost/login/

# Usuários: 

|Edson Klock|edsondefreitasklock@gmail.com|

... 

# Licença 

Copyright :copyright: 2024 - desafio_opencms_edson
