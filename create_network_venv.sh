#!/usr/bin/env bash

VENVNAME=network_venv

python3 -m venv $VENVNAME
source $VENVNAME/bin/activate
pip install --upgrade pip

pip install ipython
pip install jupyter

python -m ipykernel install --user --name=$VENVNAME

test -f requirements_network.txt && pip install -r requirements_network.txt

deactivate
echo "build $VENVNAME"
