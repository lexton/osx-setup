#!/bin/bash -ex

brew install python
pip install virtualenv
pip install virtualenvwrapper

pushd $HOME
mkdir .virtualenvs
popd
