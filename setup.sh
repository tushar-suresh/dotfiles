#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc

# bash
ln -s ${BASEDIR}/bashrc ~/.bashrc
ln -s ${BASEDIR}/bash_aliases ~/.bash_aliases
