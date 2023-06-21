if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

DIRS_COUNT_SHOW="1" # Insert "" to show full path

PROMPT='[%{$terminfo[bold]$fg[green]%}%n@%m %{${fg_bold[blue]}%}%{$reset_color%}%{${fg[cyan]}%}%$(echo $DIRS_COUNT_SHOW)~$(git_prompt_info)%{$fg[white]%}]$%{${fg_bold[$CARETCOLOR]}%} %{${reset_color}%}'

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$terminfo[bold]$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
