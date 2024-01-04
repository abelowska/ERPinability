#!/usr/bin/bash
set -e

python3.8 -m venv --copies venv
source venv/bin/activate
pip install wheel
pip install -r requirements.txt
python -m ipykernel install --user --name=erpinability

pip install pre-commit
pre-commit install
deactivate
