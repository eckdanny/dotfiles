# `eckdanny`'s dotfiles

Get new machine up and running quickly with my preferred setup.

![Demo Reel](.github/demo.svg)

## Installation

```
git clone https://github.com/eckdanny/dotfiles.git ~/.dotfiles
$_/bootstrap.sh
```

### Misc Configuration Files

This 

- `.tmux.conf`
- `.todo.cfg`
- `.vimrc`

### `oh my zsh`

Install [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh#basic-installation) and update `.zshrc`:

```diff
  # Would you like to use another custom folder than $ZSH/custom?
  # ZSH_CUSTOM=/path/to/new-custom-folder
+ ZSH_CUSTOM="${HOME}/.dotfiles/ohmyzsh"
```

set the theme:

```diff
- ZSH_THEME="robbyrussell"
+ ZSH_THEME="eckdanny"
```

set plugins:

```diff
- plugins=(git)
+ plugins=(git ag tmux z docker docker-compose git-open)
```

<!-- TODO: `nvm`, `conda`, ... stuff in `.zshrc` ... -->

### `vscode`

<!-- TODO: how could one fork this? (vscode does authz via github) -->

Use <samp>@code</samp>'s [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync) feature to import extensions, key-bindings, snippets, etc.

_My_ extentions usually include:

- [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)
- [Live Share](https://docs.microsoft.com/en-us/visualstudio/liveshare/use/vscode)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Atlasian: Jira & BitBucket](https://marketplace.visualstudio.com/items?itemName=Atlassian.atlascode)

_My_ keybindings usually include:

```json
 ...
 {
   "key": "cmd+k",
   "command": "workbench.action.terminal.focus"
 },
 {
   "key": "cmd+k",
   "command": "workbench.action.focusFirstEditorGroup",
   "when": "terminalFocus"
 }
```

### Commands and Aliases

#### Misc

##### `ds` - Directory Stack

Prints directory stack. Helpful for navigating the <samp>zsh</samp> directory stack.

##### `yc` - Yank Command

Copies last command (from <samp>history</samp>) to clipboard with line numbers and newlines removed.

```
$ something
```

#### [`todo.sh`](https://github.com/todotxt/todo.txt-cli "GitHub")

asdlfk

##### `t` (alias for `todo.sh`)

##### `tls` (alias for `todo.sh list [TERM...]`)

List todos.

##### `tt` (alias for `todo.sh list $1`)

<details>
  <summary>examples</summary>

```bash
tt              #
tt +project     #
tt @context     #
```

</details>

#### `git`

So long as `git` is in the plugins ([aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases "GitHub"))

##### `go` (Git Open)

asdfa

##### `gcF`

Alias for `git commit --no-verify`.

##### `gcr`

Retry a git commit message. This is helpful if a git hook is present (e.g., <samp>husky</samp>, <samp>commitizen</samp>)

#### [`ag` (Silver Searcher)](https://github.com/ggreer/the_silver_searcher "GitHub")

The <samp>ag</samp> (the Silver Searcher)

## Author

| ![alt][profile-pic] |
| :-----------------: |
|      Danny Eck      |

## Thanks/Credit

I had to do _very little_ to get my personal settings tracked thanks to:

- Mathias Bynens ([`dotfiles` repo][mathiasbynens-dotfiles])
- OhMyZsh ([website][ohmyzsh-site], [repo][ohmyzsh-github])

[profile-pic]: https://avatars2.githubusercontent.com/u/3521444?s=100&u=92031bc1bab5a65217f92776953473fa0f7650e8&v=4 "Profile Pic"
[mathiasbynens-dotfiles]: https://github.com/mathiasbynens/dotfiles "GitHub"
[ohmyzsh-github]: https://github.com/ohmyzsh/ohmyzsh "GitHub"
[ohmyzsh-site]: https://ohmyz.sh/ "Oh My Zsh"
[homebrew]: https://brew.sh/ "HomeBrew"
