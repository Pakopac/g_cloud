#!/bin/bash


# Python & dependencies

echo "$OSTYPE"
apt-get update
apt-get install python3.6
apt install python-pip

if [ ! -d "/venv" ] 
then
    apt-get install python3-venv
    python3 -m venv venv
fi

source venv/bin/activate

pip install numpy
pip install pandas
pip install sklearn
pip install matplotlib
pip install jinja2
pip install joblib
pip install jupyter
pip install flask
pip install fastapi
pip install pydantic
pip install uvicorn

deactivate


# Docker

sudo apt-get update

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y docker-ce

sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
