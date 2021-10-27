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
git clone https://github.com/paimanbandi/vim-p.git $HOME/.config/nvim
```

### Docker

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

