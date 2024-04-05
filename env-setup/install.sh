#!/bin/bash

# Install Terraform

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

# Install Atlantis

wget https://github.com/runatlantis/atlantis/releases/download/v0.27.2/atlantis_linux_amd64.zip | unzip

# Install ngrok

wget -c https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -O - | tar -xz

./ngrok http 4141 &

NGROK_URL='https://e6b3-35-230-20-170.ngrok-free.app'

WEBHOOK_SECRET='PU9pLXYpNc' # Just a random string
