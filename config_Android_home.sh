#criando variavel que recebe diretorio do sdk
ANDROID_HOME = /home/chenrique/Android/tools
#configurando variavel android_home na variavel de amebiente

if [ -d $ANDROID_HOME ]
then
   export PATH = $PATH:/$ANDROID_HOME
else
   echo "Diretorio não existe"
fi




