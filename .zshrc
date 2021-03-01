# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/antigen.zsh
export PATH=~/.local/bin:$PATH
export EDITOR="code -w"
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
#Custom theme
antigen theme romkatv/powerlevel10k
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle history
antigen bundle dgnest/zsh-gvm-plugin
antigen bundle aws
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle yarn
antigen bundle command-not-found
antigen bundle endaaman/lxd-completion-zsh
antigen bundle lukechilds/zsh-nvm
antigen bundle lukechilds/zsh-better-npm-completion

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
#Custom env
export EDITOR=/usr/bin/vim
#Custom Alias
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vi="vim"
##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=50000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#export PATH="/Users/benjaminsanvoisin/Library/Python/3.9/bin:$PATH"
#export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
