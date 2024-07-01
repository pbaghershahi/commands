#!/bin/bash

apt-get update;
apt-get install git screen vim curl htop wget -y;

cd /workspace;
python3 -m venv env;
source env/bin/activate;
pip install torch torchvision torchaudio;
curr_version=$(python -c "import torch; print(torch.__version__)");
pytorch_version="${1:-$curr_version}";
pytorch_version="torch-${pytorch_version}.html";
pip install --no-index pyg_lib torch-scatter torch-sparse torch-cluster torch-spline-conv -f https://pytorch-geometric.com/whl/$pytorch_version;
pip install torch-geometric;
pip install torcheval;
pip install torchmetrics;
pip install matplotlib;
pip install pandas;
pip install ipdb;
pip install gdown;
pip install notebook;
pip install pyyaml;
pip install -U "ray[data,train,tune,serve]";
pip uninstall fsspec;
pip install --force-reinstall -v "fsspec==2024.3.1"
printf "\033c";
