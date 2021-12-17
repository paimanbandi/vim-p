#!/bin/bash

spinner()
{
	pid=$!
	spin='-\|/'

	i=0
	while kill -0 $pid 2>/dev/null
	do
  		i=$(( (i+1) %4 ))
  		printf "\r${spin:$i:1}"
  		sleep .1
	done
}

if [[ $OSTYPE == 'darwin'* ]]; then
  echo "Installing Neovim..."
  wget -O nvim-macos.tar.gz https://github.com/neovim/neovim/releases/download/v0.6.0/nvim-macos.tar.gz &
  spinner
  tar xzf nvim-macos.tar.gz &
  spinner
  rm -f nvim-macos.tar.gz &
  spinner
  chmod -R 777 nvim-osx64
  export PATH=$PWD/nvim-osx64/bin:$PATH &
  spinner
  ln -sf $PWD/nvim-osx64/bin/nvim /opt/local/bin &
  spinner
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Installing Neovim..."
  wget -O nvim-linux64.tar.gz https://github.com/neovim/neovim/releases/download/v0.6.0/nvim-linux64.tar.gz &
  spinner
  tar xzf nvim-linux64.tar.gz &
  spinner
  rm -f nvim-linux64.tar.gz &
  chmod -R 777 nvim-linux64
  export PATH=$PWD/nvim-linux64/bin:$PATH &
  spinner
  ln -sf $PWD/nvim-linux64/bin/nvim /usr/local/bin &
  spinner
else
  echo "Your OS is not supported"; exit 2;
fi

if [ -d "$HOME/.config/nvim" ]; then
  echo "Backing up the nvim folder..."
  mv $HOME/.config/nvim $HOME/.config/nvim_$(date +%Y%m%d_%H%M%S) &
  spinner
else
  mkdir -p $HOME/.config/nvim
fi

if [ -d "vim-p/" ]; then
  echo "vim-p directory is exist"; exit 2;
fi
echo "Cloning the vim-p repo..."
git clone https://github.com/paimanbandi/vim-p.git && cp -r vim-p/.config/nvim $HOME/.config && rm -rf vim-p &
spinner

echo "Installing packer.nvim..."
if [ -d "$HOME/.local/share/nvim/site/pack/packer" ]; then
  rm -rf $HOME/.local/share/nvim/site/pack/packer &
  spinner
fi

mkdir -p $HOME/.local/share/nvim/site/pack/packer/start &&\
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim &
spinner

echo "Installing the plugins..."
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' &
spinner

echo "Setting up the plugins..."
mv $HOME/.config/nvim/init.lua $HOME/.config/nvim/init.lua.BAK && mv $HOME/.config/nvim/init-plugins.lua $HOME/.config/nvim/init.lua &
spinner

echo "Yeay! vim-p installed successfully"
