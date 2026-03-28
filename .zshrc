
# Completion cache
HISTFILE="$HOME/.config/zsh/.zhistory"
HISTSIZE=10000
SAVEHIST=10000

# Share cache history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history


# Ignore upper and lowercase when TAB completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# fastfetch. Will be disabled if above colorscript was chosen to install
fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


# Enable plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Prompt

autoload -Uz vcs_info
setopt PROMPT_SUBST

zstyle ':vcs_info:git:*' formats '‹%b›'
zstyle ':vcs_info:git:*' actionformats '‹%b|%a›'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '●'
zstyle ':vcs_info:git:*' unstagedstr '●'

precmd() { vcs_info }

RPROMPT='%(?..%F{red}%? ↵%f)'

# Prompt chính
PROMPT='╭─%B%F{green}%n@%m%f%b %B%F{blue}%~%f%b %F{yellow}${vcs_info_msg_0_}%f
╰─%B%(!.%F{red}#.%F{green}$)%f%b '

# Alias
alias ls='ls --color=auto'
alias start-hdmi="xrandr --output HDMI-1-0 --right-of eDP-1 --auto"

# Export somethings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
export PATH="$HOME/.local/bin:$PATH" 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cuong75201/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/cuong75201/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/cuong75201/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/cuong75201/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

