# Danny's dotfiles

![Demo Reel](.github/demo.svg)

## Installation

```
git clone https://github.com/eckdanny/dotfiles.git ~/.dotfiles && cd $_ && source bootstrap.sh
```

then

```
~/brew.sh
```

### `ohmyzsh`

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

## Author

| ![alt][profile-pic] |
| :-----------------: |
|      Danny Eck      |

## Thanks to…

[profile-pic]: https://avatars2.githubusercontent.com/u/3521444?s=100&u=92031bc1bab5a65217f92776953473fa0f7650e8&v=4 "Profile Pic"
