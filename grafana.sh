# Install prerequisite packages
sudo apt-get install -y apt-transport-https software-properties-common wget
# Import the GPG Key;
sudo mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null

This command will add repo for stable releases
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

#Update the lsit of available packages
sudo apt-get update
#Install Grafana Enterprise
sudo apt-get install grafana-enterprise

To Start the service, daemon reload and start
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server
sudo systemctl enable grafana-server.service
