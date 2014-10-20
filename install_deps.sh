#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y python-pip

sudo pip install virtualenvwrapper
sudo pip install cookiecutter
sudo pip install coverage
sudo pip install sphinx
sudo pip install flake8
sudo pip install tox
