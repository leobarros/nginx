# Nginx web server
  Máquina virtual para estudo do servidor web Nginx.
  Os exemplos foram tirados do curso de Nginx Fundamental em
  (https://www.udemy.com/nginx-fundamentals/learn/v4/overview) 

# Requerimentos
  * VirturalBox
  * Vagrant (Ubuntu)
  * Puppet 4
  * Adicionar em sua máquina o host web.testlabs.com.br em seu /etc/hosts.
    Exemplo: xxx.xxx.xxx.xxx web.testlabs.com.br
  * Baixar o wordpress (https://wordpress.org/download/)
    Criar a pasta /sites/wordpress, pois está root /sites/wordpress
    no arquivo de configuração de nginx.conf.

# Usando o Vagrant

  * Iniciando a máquina virtual com o VagrantFile presente:
    vagrant up web

  * Para iniciar a sessão ssh:
    vagrant ssh web

  * Adicionar o repositorio de PHP 5 na máquina virtual

    Sites para informações sobre o repositório do PHP 5.6:
    https://joshtronic.com/2014/08/31/upgrade-to-php-56-on-ubuntu-1404-lts/
    https://www.dotdeb.org/instructions/
    https://www.dotdeb.org/mirrors/

  * Baixar o wordpress (https://wordpress.org/download/)
    Criar a pasta /sites/wordpress, pois está root /sites/wordpress
    no arquivo de configuração de nginx.conf.

  * Instalar o MySQL para abrigar a base de dados do wordpress.
    apt-get install mysql-server

  * Instalar apache2-utils para usar o ab, htpasswd e etc. 
    apt-get install apache2-utils
    Copiar o arquivo .htpassw para /etc/nginx/
    Usuário de exemplo e senha de exemplo:
    usuário: testlabs
    senha: 280600

## Instalação do php5.6
  Depois de informar o repositorio do php devemos instalar os pacotes:

  * php5.6
  * php5.6-fpm
  * php5.6-cgi
  * php5.6-mysql

  apt-get install php5.6 php5.6-fpm php5.6-cgi php5.6-mysql

# Exemplo de um site
  Está sendo usado o site de exemplo da pasta bootstrap assim como o
  wordpress.
  Será necessário informar se deseja usar o bootstrap ou wordpress no
  arquivo nginx.conf do projeto, copiar para /etc/nginx.conf e depois
  reiniciar o nginx com systemctl restart nginx.

# Gerando certificado para uso de https no nginx.conf
  Use o comando abaixo na máquina virtual para gerar o ssl
  sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt

# Arquivo de Configuração
  Colocar o arquivo nginx.conf em /etc/nginx/
  Colocar o arquivo www.conf em /etc/php/5.6/fpm/pool.d
