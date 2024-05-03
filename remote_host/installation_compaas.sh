#!/bin/bash

apt update;
apt upgrade;
apt install software-properties-common;
add-apt-repository ppa:deadsnakes/ppa;
apt-get install python3.11;
apt-get install git;
apt-get install screen;
apt-get install vim;
apt-get install curl;
apt-get install wget;
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1;
update-alternatives --config python3;
apt install python3-pip;
apt-get install python3.11-distutils;
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11;
# pip install virtualenv
apt-get install python3.11-dev python3.11-venv;
python3 -m venv env;
source env/bin/activate;
pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://download.pytorch.org/whl/cu118;
pip install --no-index torch-scatter -f https://pytorch-geometric.com/whl/torch-2.1.0%2Bcu118.html;