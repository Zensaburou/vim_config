#!/bin/bash

# Create vim settings dir
mkdir ~/.vim
mkdir -p ~/.vim/ftdetect
mkdir -p ~/.vim/after
mkdir -p ~/.vim/after/ftplugin
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/plugin

# Symlink config files
app_dir=$(cd "$(dirname "$1")"; pwd)/$(basename "$1")

# Vimrc
ln -s $app_dir/config.vim ~/.vimrc

# Language-specific settings
ln -s $app_dir/vim/after/ftplugin/ruby.vim ~/.vim/after/ftplugin/ruby.vim
ln -s $app_dir/vim/after/ftplugin/yaml.vim ~/.vim/after/ftplugin/yaml.vim

# Pathogen package manager
cd ~/.vim
git init
git remote add origin https://github.com/tpope/vim-pathogen.git
git pull origin master

cd ~/.vim/bundle

# Install third-party plugins

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

# Official rust config
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
