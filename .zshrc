autoload -Uz vcs_info
precmd() {
    vcs_info
}
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)'
setopt PROMPT_SUBST
PROMPT='%(?..%F{white}%K{red}Error%K) %F{cyan}%n: %F{green}%~ ${vcs_info_msg_0_}%F{white}>'
