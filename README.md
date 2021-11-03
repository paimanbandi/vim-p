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

#### Building Image Manually

To build the Docker image manually: just clone this project, build and run the image.

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

#### Pulling Image from Docker Hub

    docker pull paiman/vim-p

### Run install.h

#### Prerequisite

- Mac OS or Linux

If you don't have Neovim or Docker in your machine, or you have them but you want something simple, then you can run this single command:

    curl https://raw.githubusercontent.com/paimanbandi/vim-p/master/install.sh | bash

This will install Neovim 0.5.1, backup your current configuration (if you have), and setup the configuration automatically.

## Plugins

- Colorscheme using [tokyonight-vim](https://github.com/ghifarit53/tokyonight-vim)
- File manager using [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Syntax highlighting using [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Syntax checking using [syntastic](https://github.com/vim-syntastic/syntastic)
- Auto-completion using [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Debugging using [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- Statusline using [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- Indentation lines using [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- Comment/Uncomment text using [kommentary](https://github.com/b3nj5m1n/kommentary)
- Autosaving using [AutoSave.nvim](https://github.com/Pocco81/AutoSave.nvim)
- Rainbow parentheses using [rainbow](https://github.com/luochen1990/rainbow)
- Same text selection highlighting using [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- Tabline using [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- Statusline using [statusline.lua](https://github.com/beauwilliams/statusline.lua)
- Color code highlighter using [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- Floating terminal using [FTerm](https://github.com/numToStr/FTerm.nvim)
- Smooth scrolling using [Neoscroll](https://github.com/karb94/neoscroll.nvim)
- Fuzzy finder using [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Key Bindings

My value of `<Leader>` key is `<Space>`, if you want to change this key, just go to `.config/nvim/lua/settings.lua` and edit the value of mapleader.

    g.mapleader = ' '

| Mode   | Key                   | Action                           |
| ------ | --------------------- | -------------------------------- |
| Normal | Ctrl-n                | Open/Close the file manager      |
| Normal | TAB                   | Open next file tab               |
| Normal | Shift-TAB             | Open previous file tab           |
| Normal | Ctrl-q                | Quit                             |
| Normal | Ctrl-qx               | Force quit                       |
| Normal | Ctrl-x                | Quit all                         |
| Normal | Ctrl-xx               | Force quit all                   |
| Normal | gcc                   | Comment/Uncomment code           |
| Normal | F12                   | Open/close floating terminal     |
| Normal | Leader-dh             | Toggle Breakpoint                |
| Normal | Leader-ff             | Find file                        |
| Normal | Leader-fg             | Find text                        |
| Normal | Leader-fe             | Fold code                        |
| Normal | Leader-nf             | Unfold code                      |
| Insert | hh / HH               | Escape                           |
| Insert | TAB (Auto-completion) | Auto select the first suggestion |
| Visual | >                     | Next indent                      |
| Visual | <                     | Previous indent                  |
