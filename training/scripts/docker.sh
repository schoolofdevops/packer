curl -sSL https://get.docker.com/ | sh
service docker start
chkconfig docker on
usermod -a -G docker vagrant
