#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

virtualenv --prompt="Ansible Virtual Environment" "${DIR}/ENV"

source ${DIR}/ENV/bin/activate

pip install --upgrade pip
pip install -r ${DIR}/requirements${SETUP_ENVIRONMENT:+"-${SETUP_ENVIRONMENT}"}.txt

deactivate
