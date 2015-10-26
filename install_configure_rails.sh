echo 'Instalando rvm com a versão do ruby mais estável'
\curl -sSL https://get.rvm.io | bash -s stable --ruby

versao_rvm = rvm --version
versao_ruby = ruby --version

if [ versao_rvm != null && versao_ruby != null ]
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
	echo 'Rails instalado com sucesso:' + versao_rails
else
	echo 'Falha na instalação do Rails'
fi	

echo 'instalando postgresql'

if ["$LINUX_ARCH" == "x86_64"]; then
	deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main
	wget -c --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
	sudo apt-key add -
	sudo apt-get update

	echo 'versão grafica'
	wget -c http://www.enterprisedb.com/postgresql-945-installers-linux64?ls=Crossover&type=Crossover

else
	deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main
	wget -c --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
	sudo apt-key add -
	sudo apt-get update

	echo 'versão grafica'
	wget -c http://www.enterprisedb.com/postgresql-945-installers-linux32?ls=Crossover&type=Crossover

fi
