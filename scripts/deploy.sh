
cd chaperootodo_client
sudo chown jenkins /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock
sudo docker-compose up -d
