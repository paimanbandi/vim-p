FROM ubuntu:latest

LABEL maintainer="Paiman <paiman.bandi@gmail.com>"

ARG DEBIAN_FRONTEND=noninteractive
ENV HOME /root

WORKDIR $HOME

RUN apt update -y

RUN apt install -y \
  build-essential \
  wget \
	curl \
	git \
	fzf \
	ripgrep

RUN wget https://github.com/neovim/neovim/releases/download/v0.6.0/nvim-linux64.tar.gz
RUN tar xzvf nvim-linux64.tar.gz
RUN export PATH=$HOME/nvim-linux64/bin:$PATH
RUN ln -s $HOME/nvim-linux64/bin/nvim /usr/local/bin

COPY . $HOME

RUN mkdir -p $HOME/.local/share/nvim/site/pack/packer/start/
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

RUN mv $HOME/.config/nvim/init.lua $HOME/.config/nvim/init.lua.BAK
RUN mv $HOME/.config/nvim/init-plugins.lua $HOME/.config/nvim/init.lua

WORKDIR /usr/src/nvim

ENTRYPOINT ["nvim"]
