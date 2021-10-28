# Vim-P

My personal Neovim configuration.

## Prerequisite

- Neovim >= 0.5 or Docker

## Installation

### Manual

Back up existing Neovim configuration

```zsh
mv $HOME/.config/nvim $HOME/.config/nvim.BAK
```

Create folder `nvim`

```zsh
mkdir $HOME/.config/nvim
```

Clone the project

```zsh
git clone https://github.com/paimanbandi/vim-p.git && cp -r vim-p/.config/nvim $HOME/.config
```

### Run install.h

If you don't have Neovim in your machine, you can run `install.sh` file.

```zsh
curl https://raw.githubusercontent.com/paimanbandi/vim-p/master/install.sh | sudo bash
```

### Docker

If you prefer using Docker, then just clone this project, build and run the image.

Clone the project

```zsh
git clone https://github.com/paimanbandi/vim-p.git
```

Build the image

```zsh
docker build -t vim-p .
```

Run the image

```zsh
docker run -it --rm -v $(pwd):/usr/src/nvim vim-p [filename/directory]
```

Create alias for **vim-p**

	alias v="docker run -it --rm -v $(pwd):/usr/src/nvim vim-p"

Example for usage the alias:

```zsh
v ./
```

```zsh
v index.html
```

