sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
docker --version
docker ps -a
docker pull redis

docker run -d --name redis-secure -p 6379:6379 redis redis-server --requirepass "password"
