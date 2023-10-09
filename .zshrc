# Load my secret file
secret_env_file="~/Dropbox/secret.env"

export CLICOLOR=1
[[ -f $secret_env_file ]] && source $secret_env_file

autoload -Uz vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}
setopt prompt_subst

zstyle ':vcs_info:*' formats '%b%c'
zstyle ':vcs_info:*' stagedstr '*'

zstyle ':vcs_info:*' check-for-staged-changes true

PROMPT='%F{yellow}[${vcs_info_msg_0_}]%F{cyan}[%3~]%f%B\$%f%b '
