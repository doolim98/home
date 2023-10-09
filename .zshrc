# Load my secret file
secret_env_file="~/Dropbox/secret.env"

export CLICOLOR=1
[[ -f $secret_env_file ]] && source $secret_env_file

autoload -Uz vcs_info
setopt prompt_subst

zstyle ':vcs_info:*' formats '%(u.-.+)%(u.%F{1}.%F{2})[%r/%b%c]'

zstyle ':vcs_info:*' stagedstr '*'

zstyle ':vcs_info:*' check-for-changes true

precmd () { vcs_info }
PS1='${vcs_info_msg_0_}%F{6}[%3~] %f%# '



