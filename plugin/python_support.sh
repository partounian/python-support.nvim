#!/bin/sh

cd $(dirname "${BASH_SOURCE[0]}")

set -e
set -x

echo 'initializing python3 virtualenv for neovim'

python3 -m virtualenv nvim_py3
. nvim_py3/bin/activate
pip install neovim
pip install flake8
deactivate

echo 'initializing python2 virtualenv for neovim'

python2 -m virtualenv nvim_py2
. nvim_py2/bin/activate
pip install neovim
pip install flake8
deactivate

echo 'init finished'
