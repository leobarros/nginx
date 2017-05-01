# nginx
  Estudos do Nginx

# Requerimentos
  * VirturalBox
  * Vagrant (Ubuntu)
  * Puppet 4
  * Adicionar em sua máquina o host web.testlabs.com.br em seu /etc/hosts.
    Exemplo: xxx.xxx.xxx.xxx web.testlabs.com.br

  * Adicionar o repositorio de PHP 5 na máquina virtual
    https://joshtronic.com/2014/08/31/upgrade-to-php-56-on-ubuntu-1404-lts/
    https://www.dotdeb.org/instructions/
    https://www.dotdeb.org/mirrors/

  * Baixar o wordpress (https://wordpress.org/download/)
    Criar a pasta /sites/wordpress, pois está root /sites/wordpress
    no arquivo de configuração de nginx.conf.

# Instalacao do php5.6
  Depois de informar o repositorio do php devemos intalar os pacotes:

  * php5.6
  * php5.6-fpm
  * php5.6-cgi
  * php5.6-mysql

# Exemplo de um site
  Está sendo usado o site de exemplo da pasta bootstrap

# Arquivo de Configuração
  Colocar o arquivo nginx.conf em /etc/nginx/
  Colocar o arquivo www.conf em /etc/php/5.6/fpm/pool.d
