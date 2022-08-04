[[ -f ~/.config/ggl/ggloader.zsh ]] || curl -L https://raw.githubusercontent.com/Gigitsu/ggloader/main/ggloader.zsh > ~/.config/ggl/ggloader.zsh

source ~/.config/ggl/ggloader.zsh

ggl bundle 'zsh-users/zsh-completions'

ggl bundle 'gigitsu/ggsh/editor'
ggl bundle 'gigitsu/ggsh/directory'
ggl bundle 'gigitsu/ggsh/fasd'
ggl bundle 'gigitsu/ggsh/git'
ggl bundle 'gigitsu/ggsh/history'
ggl bundle 'gigitsu/ggsh/homebrew'

ggl bundle 'gigitsu/ggsh/completion'

ggl bundle 'zsh-users/zsh-syntax-highlighting'
ggl bundle 'zsh-users/zsh-history-substring-search'

ggl theme 'romkatv/powerlevel10k'

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Some plugin configurations

## History substring search
bindkey -M "emacs" "^[[A" history-substring-search-up
bindkey -M "emacs" "^[[B" history-substring-search-down