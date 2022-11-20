e

sudo apt update && sudo apt upgrade
docker --version
if [ $? =< 0 ];
then
    echo "TESTE PARA VER SE FUNCIONA IF"
    sudo apt install docker.io -y
    echo "1 parte"
        sudo systemctl start docker
        echo "2 parte"
sudo systemctl enable docker
sudo docker pull mysql
	echo "Buildando DockerFile"
sudo docker build -t mysql-safespace .
    sleep 4
        echo "Subindo Container"
        sudo docker run -dit -p 3306:3306 --name safespace mysql-safespace
else
sudo docker pull mysql
  echo "Buildando DockerFile"
sudo docker build -t mysql-safespace .
    echo "Subindo Container"   
sudo docker run -dit -p 3306:3306 --name safespacemyql mysql-safespace 
fi	
	echo "Docker Configurado"



