echo 'Instalando rvm com a versão do ruby mais estável'
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
sudo \curl -sSL https://get.rvm.io | bash
echo 'Instalando Ruby com a versão mais instalvél'
rvm install ruby-2.2.2
versao_rvm = rvm --version
versao_ruby = ruby --version

if [ versao_rvm != null && versao_ruby != null ]
then
   echo 'RVM instalado com sucesso:' + versao_rvm
   echo 'Ruby instalado com sucesso:' + versao_ruby
else
   echo 'Falha na instalação do RVM'
   echo 'Falha na instalação do Ruby'
fi

echo 'instalando rails 4.2.2'
gem install rails --version 4.2.2 --no-ri --no-rdoc

versao_rails = rails --version

if [ versao_rails != null ]
then
    echo 'Rails instalado com sucesso:' + versao_rails
else
    echo 'Falha na instalação do Rails'
fi	

echo 'instalando postgresql'

sudo add-apt-repository ppa:pitti/postgresql
sudo apt-get update  
sudo apt-get install postgresql
