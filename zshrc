alias l='ls -al'
alias lsd='ls -F'
alias llsd='ls -aF'

alias -s log="open -a Console"

setopt prompt_subst

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx  # black bg color scheme
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd # linux term colors

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

function vnc() {
    open vnc://"$USER"@"$1"
}

bindkey '^[[A' up-line-or-search # up arrow bindkey
bindkey '^[[B' down-line-or-search # down arrow 

if [[ -v SSH_CLIENT ]]; then
    HOST_PROMPT='%F{cyan}%n%f@%F{yellow}%m%f '
else
    HOST_PROMPT=''
fi

#PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{252}%2~%f%b %# '
PROMPT='%(?.%F✅%?.%F{red}❗️%?)%f $HOST_PROMPT%B%F{252}%2~%f%b %# '

