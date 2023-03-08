######################
### Initialization ###
######################

# Do not execute tmux in tty6, this could be a fallback tty in case tmux doesn't work anymore,
# and in root, because it will break some environments (intellij, vscode, rancher, ..)
if [[ -z "$TMUX" && "$(tty)" != "/dev/tty6" && "$PWD" != "/" ]]; then
  [[ "$PWD" == "$HOME" ]] && local session_name="home" || local session_name="$(basename "$PWD" | tr . -)"
  exec tmux new-session -As $session_name
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#################
### Gg Loader ###
#################

#--- Download ggloader if not exists
if [[ ! -f ~/.config/ggl/ggloader.zsh ]]; then
  mkdir -p ~/.config/ggl
  curl -L https://raw.githubusercontent.com/Gigitsu/ggloader/main/ggloader.zsh > ~/.config/ggl/ggloader.zsh
fi

source ~/.config/ggl/ggloader.zsh

###############
### Plugins ###
###############

ggl bundle 'gigitsu/ggsh/environment' # load this before every other modules

ggl bundle 'gigitsu/ggsh/asdf'
ggl bundle 'gigitsu/ggsh/editor' 
ggl bundle 'gigitsu/ggsh/fzf'
ggl bundle 'gigitsu/ggsh/git'
ggl bundle 'gigitsu/ggsh/history'
ggl bundle 'gigitsu/ggsh/homebrew'
ggl bundle 'gigitsu/ggsh/tmux'
ggl bundle 'gigitsu/ggsh/zoxide'

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


export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

export LANG='en_US.UTF-8'

# Make it possible to add per-machine customizations.
if [[ -f ~/.zshrc.local ]] source ~/.zshrc.local