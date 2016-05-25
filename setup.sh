#!/bin/bash

# Symlink vimrc to this repo's settings
parent_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
cd "$parent_path"
ln -s ./config.vim ~/.vimrc

# Create vim settings dir
mkdir ~/.vim

# Pathogen package manager
cd ~/.vim
git init
git remote add origin https://github.com/tpope/vim-pathogen.git
git pull origin master

mkdir -p ~/vim/bundle
mkdir -p ~/.vim/plugin

cd ~/.vim/bundle

# Line indentation markers
git clone https://github.com/Yggdroot/indentLine.git

# Add end statements to ruby code
git clone git://github.com/tpope/vim-endwise.git

# Navigation between indented blocks
git clone git://github.com/jeetsukumaran/vim-indentwise.git

# Fuzzy finder
git clone https://github.com/kien/ctrlp.vim.git

# Easily wrap text in surrounding characters (quotes, brackets, html tags, etc)
git clone https://github.com/tpope/vim-surround.git

# Autoclose parens, brackets, etc.
git clone git@github.com:vim-scripts/AutoClose.git

# Rspec integration
git clone https://github.com/thoughtbot/vim-rspec
