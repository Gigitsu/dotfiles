#################
### Gg Loader ###
#################

[[ -f ~/.config/ggl/ggloader.zsh ]] || curl -L https://raw.githubusercontent.com/Gigitsu/ggloader/main/ggloader.zsh > ~/.config/ggl/ggloader.zsh

source ~/.config/ggl/ggloader.zsh

###############
### Plugins ###
###############

ggl bundle 'gigitsu/ggsh/tmux' # first of all, start tmux session
ggl bundle 'gigitsu/ggsh/environment' # load this before every other modules

ggl bundle 'gigitsu/ggsh/asdf'
ggl bundle 'gigitsu/ggsh/editor' 
ggl bundle 'gigitsu/ggsh/fasd'
ggl bundle 'gigitsu/ggsh/fzf'
ggl bundle 'gigitsu/ggsh/git'
ggl bundle 'gigitsu/ggsh/history'
ggl bundle 'gigitsu/ggsh/homebrew'

ggl bundle 'zsh-users/zsh-completions'

ggl bundle 'gigitsu/ggsh/completion' # this needs to be run after all bundles that offer completions

ggl bundle 'zsh-users/zsh-syntax-highlighting'
ggl bundle 'zsh-users/zsh-history-substring-search'

ggl theme 'romkatv/powerlevel10k'

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


#############################
### Custom configurations ###
#############################

#--- History substring search
bindkey -M "emacs" "^[[A" history-substring-search-up
bindkey -M "emacs" "^[[B" history-substring-search-down
