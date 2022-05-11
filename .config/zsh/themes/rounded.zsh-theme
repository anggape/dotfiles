blub_left=''
blub_right=''
newline=$'\n'
PROMPT='%{$fg[black]%}$blub_left%{$bg[black]%}%{$fg[white]%} %~%{$reset_color%}%{$fg[black]%}$blub_right %{$reset_color%}$(git_prompt_info)$newline '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[black]%}$blub_left%{$fg[blue]%}%{$bg[black]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[black]%}$blub_right%{$reset_color%} "
