echo 'Instalando rvm com a versão do ruby mais estável'
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo \curl -sSL https://get.rvm.io | bash
source /home/chenrique/.rvm/scripts/rvm
versao_rvm = rvm --version

if [ versao_rvm != null ]
then
   echo 'RVM instalado com sucesso:' + versao_rvm
else
   echo 'Falha na instalação do RVM'
fi

echo 'Instalando Ruby com a versão mais instalvél'
rvm install ruby-2.2.3
versao_ruby = ruby --version

if [ versao_ruby != null ]
then
   echo 'Ruby instalado com sucesso:' + versao_ruby
else
   echo 'Falha na instalação do Ruby'
fi

sudo apt-get install libxslt-dev libxml2-dev
sudo apt-get install build-essential
sudo apt-get install libgmp3-dev

echo 'instalando rails 4.2.2'
gem install rails --version 4.2.4 --no-ri --no-rdoc

versao_rails = rails --version

if [ versao_rails != null ]
then
    echo 'Rails instalado com sucesso:' + versao_rails
else
    echo 'Falha na instalação do Rails'
fi	

echo 'Instalando lib para o postgres'
sudo apt-get install libpq-dev
