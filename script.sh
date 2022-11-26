#!/bin/bash
sudo apt update && sudo apt upgrade -y
PURPLE='0;35'
NC='\033[0m'
VERSAO=11
s="s"
S="S"

                            sudo apt-get -y install cowsay
clear
                cowsay -f tux "Ola serei seu assistente"
                sleep 3
                clear
                cowsay -f tux "Verificando aqui se você possui o Java instalado...;"
                sleep 3
                clear

               java --version

if [ $? -eq 0 ]
        then


                cowsay -f tux "Você já tem o java instalado =]"
                sleep 3
                clear

        else
                        cowsay -f tux "Opa! Não identifiquei nenhuma versão do Java instalado"
                        sleep 3
                        clear
                        cowsay -f tux "sem problemas, irei resolver isso agora"

        sleep 3
                        clear
                        cowsay -f tux "Confirme para mim se realmente deseja instalar o Java (S/N)?"
                        sleep 3
                        clear
        read inst
        echo $inst
        if [ \"$inst\" = \"$s\" ] ||[ \"$inst\" = \"$S\" ]
                then
                        cowsay -f tux "otimo! Você escolheu instalar o Java =]"
                        sleep 3
                        clear
                        cowsay -f tux "Vou começar"
                        sleep 3
                        clear
                        git clone https://github.com/Grupo-PI-2SEMESTRE/java-para-aws.git
 clear
                        cowsay -f tux "Iniciando"
                        sleep 3
                        sudo apt install openjdk-11-jre-headless -y
                        clear
                        cowsay -f tux "Java instalado!"

        fi
fi
clear

 cowsay -f tux "Verificando se você já possui o docker"
sleep 3
clear

docker --version
if [ $? -ne 0 ]
then

sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

sudo docker pull mysql
        cowsay -f tux "Buildando DockerFile"
sudo docker build -t mysql-safespace .
sleep 4
clear 
        cowsay -f tux "Subindo Container"
        sudo docker run -dit --restart unless-stopped -p 3306:3306 --name safespace mysql-safespace
else
sudo docker pull mysql
 cowsay -f tux  "Buildando DockerFile"
sudo docker build -t mysql-safespace .
sleep 4
clear
    cowsay -f tux "Subindo Container"
sudo docker run -dit --restart unless-stopped -p 3306:3306 --name safespacemyql mysql-safespace
clear
fi
        echo "Docker Configurado"


