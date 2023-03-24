# Basic NeoVim plugins
## Found on ~/.config/nvim

### Installing Vim-Plug (https://github.com/junegunn/vim-plug).
[Here is a video to learn how to set it up: https://www.youtube.com/watch?v=QB9V__3VO2s.]
- Create directory called nvim on .config
Run `cd ~/.config && mkdir nvim && cd nvim`
- Create Init.vim file
Create file: `touch init.vim`
Point to vim file: `nvim init.vim`
```
source $HOME/.config/nvim/plugins.vim
```
- Install Vim-Plug
Run `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

### Using Vim-Plug
- To add a new plugin: add `Plug '***GitHubUsername***/***RepoName***'` with Github user and repo name
- To install a new plugin run: `:PlugInstall` in the NeoVim console
- To remove plugins run: `:PlugClean` in the NeoVim console
