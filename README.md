# Vim-P

P for Paiman. This is my personal Neovim configuration.

## Installation

### Manual

#### Prerequisite

- Neovim >= 0.5

Back up existing Neovim configuration

    mv $HOME/.config/nvim $HOME/.config/nvim.BAK


Create folder `nvim`

    mkdir $HOME/.config/nvim


Clone the project and copy to `.config` folder

    git clone https://github.com/paimanbandi/vim-p.git && cp -r vim-p/.config/nvim $HOME/.config


Install the plugins

    nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'


Activate the plugins

    mv $HOME/.config/nvim/init.lua $HOME/.config/nvim/init.lua.BAK && mv $HOME/.config/nvim/init-plugins.lua $HOME/.config/nvim/init.lua


Run your Neovim

    nvim


### Docker

#### Prerequisite

- Docker

If you prefer using Docker, then just clone this project, build and run the image.

Clone the project

    git clone https://github.com/paimanbandi/vim-p.git


Build the image

    docker build -t vim-p .


Run the image

    docker run -it --rm -v $(pwd):/usr/src/nvim vim-p [filename/directory]


Create alias for **vim-p**

    alias v="docker run -it --rm -v $(pwd):/usr/src/nvim vim-p"


Example for usage the alias:

    v ./

    v index.html


### Run install.h

#### Prerequisite

- Mac OS or Linux


If you don't have Neovim or Docker in your machine, or you have them but you want something simple, then you can run this single command:

    curl https://raw.githubusercontent.com/paimanbandi/vim-p/master/install.sh | bash


This will install Neovim 0.5.1, backup your current configuration (if you have), and setup the configuration automatically.


## Key Bindings

My value of <Leader> key is <Space>, if you want to change this key, just go to `.config/nvim/lua/settings.lua` and edit the value of mapleader.

    g.mapleader = ' '


| Mode   | Key               | Action                                     |
|--------|-------------------|--------------------------------------------|
| Normal | Ctrl-n            | Open/Close the file explorer tree          |
| Normal | TAB               | Open next file tab                         |
| Normal | Shift-TAB         | Open previous file tab                     |
| Normal | Ctrl-q            | Quit                                       |
| Normal | Ctrl-x            | Quit all                                   |
| Insert | hh / HH           | Escape                                     |
