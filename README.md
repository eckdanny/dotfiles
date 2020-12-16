## Installation

```diff
  # Would you like to use another custom folder than $ZSH/custom?
  # ZSH_CUSTOM=/path/to/new-custom-folder
+ ZSH_CUSTOM="/Users/deck/dotfiles/ohmyzsh"
```

then set the theme

```diff
- ZSH_THEME="robbyrussell"
+ ZSH_THEME="eckdanny"
```

head to plugins:

```diff
- plugins=(git)
+ plugins=(git tmux z docker docker-compose git-open)
```


`nvm`, `conda`, ... stuff in `.zshrc` ...
