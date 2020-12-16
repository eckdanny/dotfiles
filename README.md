## Installation

```diff
  # Path to your oh-my-zsh installation.
  export ZSH="/Users/deck/.oh-my-zsh"
+ export ZSH_CUSTOM="/Users/deck/.oh-my-zsh.eckdanny"
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
