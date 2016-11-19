#!/bin/sh

echo "	Vim4Jim"
echo "	A vim profile for development in Go (golang) with my custom preferences"
echo ""

export INSTALL_DIR=$HOME/.vim4jim
# If working directory is not defined then use user's $HOME

Q="Do you want vim4jim to be installed on '$INSTALL_DIR'? y/n: "

while true; do
    read -p "$Q" yn
    case $yn in
	[Yy]* )
		# default action
		break;;
	[Nn]* ) echo "abort install"; exit;;
	* ) echo "$Q";;
    esac
done

echo "	Installing on: $INSTALL_DIR"

mkdir -p $INSTALL_DIR

# install vim-go
echo "	Cloning fatih/vim-go"
git clone https://github.com/fatih/vim-go.git $INSTALL_DIR/bundle/vim-go

# Install Vundle
echo "	Cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git $INSTALL_DIR/bundle/Vundle.vim

# install YCM for all languages
echo "	Cloning YouCompleteMe"
git clone https://github.com/Valloric/YouCompleteMe.git $INSTALL_DIR/bundle/YouCompleteMe

echo "	Installing YouCompleteMe with support for all languages"
cd $INSTALL_DIR/bundle/YouCompleteMe

echo "	Downloading YCM third party, this can take a while"
git submodule update --init --recursive
$INSTALL_DIR/bundle/YouCompleteMe/install.py --all

# NOTE: support for 

# install erlang
# omnicomplete
echo "  Cloning erlang-omnicomplete"
git clone https://github.com/vim-erlang/vim-erlang-omnicomplete $INSTALL_DIR/bundle/vim-erlang-omnicomplete

# compiler
echo "  Cloning erlang-compiler"
git clone https://github.com/vim-erlang/vim-erlang-compiler $INSTALL_DIR/bundle/vim-erlang-compiler

# runtime
echo "  Cloning erlang-runtime"
git clone https://github.com/vim-erlang/vim-erlang-runtime $INSTALL_DIR/bundle/vim-erlang-runtime

echo "	Install done"
echo "test with 'vim -u ~/.vim4jim/vimgo.rc'"

