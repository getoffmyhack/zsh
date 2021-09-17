setopt prompt_subst

export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx  # black bg color scheme
#export LSCOLORS=gxafexDxfxegedabagacad


# between quotation marks is the tool output for LS_COLORS
#export LS_COLORS="di=36:ln=1;31:so=37:pi=1;33:ex=35:bd=37:cd=37:su=37:sg=37:tw=32:ow=32"
export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

#less_termcap[mb]="${fg_bold[cyan]}"
#less_termcap[md]="${fg_bold[cyan]}"

# Colorize completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

if [[ -v SSH_CLIENT ]]; then
    HOST_PROMPT='%F{cyan}%n%f@%F{yellow}%m%f '
else
    HOST_PROMPT=''
fi

PROMPT='%(?.%F✅%?.%F{red}❗️%?)%f $HOST_PROMPT%B%F{252}%2~%f%b %# '
#PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

if [[ $TERM == xterm ]]; then
    PROMPT='%n@%m %1~ %#'
fi
