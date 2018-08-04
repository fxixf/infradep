sudo apt-get update
sudo apt-get install wget
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
sudo service docker start
newgrp docker
docker run --name mattermost-preview -d --publish 80:8065 --add-host dockerhost:127.0.0.1 infrafx/mattermost
