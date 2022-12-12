# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=2000
setopt autocd notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#
# Options
#
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# do not store duplications
setopt HIST_IGNORE_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
# Correction
#setopt CORRECT
#setopt CORRECT_ALL
# To have the best emoji experience 👨‍💻
setopt COMBINING_CHARS
setopt prompt_subst

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixeszstyle ':completion:*' expand prefix suffix


#
# Prompt
#
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
#RPROMPT="\$vcs_info_msg_0_ %T"
RPROMPT='%(?.%F{green}√%f.%K{red}%F{255} ?%?) %*%f%k'
zstyle ':vcs_info:git:*' formats "%K{green}%F{240} %b %f%k"
zstyle ':vcs_info:*' enable git
#zstyle ':vcs_info:*' check-for-changes true

PROMPT='%B%F{240}%0~%f%b $vcs_info_msg_0_
%# '

alias groot=git rev-parse --show-toplevel

#
# Auto suggestion
#
#source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
#ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20


FPATH+=:${ZDOTDIR}/zshfunctions

