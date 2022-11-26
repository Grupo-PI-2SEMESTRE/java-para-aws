#!/bin/bash
sudo apt update && sudo apt upgrade -y
PURPLE='0;35'
NC='\033[0m'
VERSAO=11

			    sudo apt-get -y install cowsay

                cowsay -f tux "Ola serie seu assistant"
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
        if [ \"$inst\" == \"S\" ]
                then
                        cowsay -f tux "otimo! Você escolheu instalar o Java =]"
                        sleep 3
                        clear
                        cowsay -f tux "Vou começar"
                        sleep 3
                        clear
				   clear
                        sudo add-apt-repository ppa:webupd8team/https://github.com/Grupo-PI-2SEMESTRE/java-para-aws.git
                        clear
                        cowsay -f tux "Iniciando"
                        sleep 3
                        clear
                        sudo apt update -y
                        sudo apt install maven
                        mvn -version
                        cowsay -f tux "Maven instalado!"
                        sudo apt install default-jdk
                        sleep 3
                        clear
                        cowsay -f tux "JDK instalado"
                        jar -cvf allClasses.jar *
                        sleep 3
                        clear
                        cowsay -f tux "Pacote jar instalado!"
                        java -jar allClasses.jar
                        sleep 3
                        clear


                        if [ $VERSAO -eq 11 ]
                                then
                                        cowsay -f tux "Preparando para instalar a versão 11 do Java"
                                        sleep 3
                                        clear
                                        cowsay -f tux "Confirme a instalação quando solicitado =]"
                                        sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y
                                        sleep 3
                                        clear
                                        cowsay -f tux "Java instalado com sucesso!"
                                        sleep 3

                                fi
                else
                cowsay -f tux "Você optou por não instalar o Java por enquanto, até a próxima então!"

        fi
fi