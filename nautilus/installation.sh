#!/bin/bash

apt-get update;
apt-get install git screen vim curl wget;

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
pip install ipdb;
pip install gdown;
printf "\033c";