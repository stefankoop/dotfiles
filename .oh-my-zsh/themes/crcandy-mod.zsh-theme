
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

preexec() {
    preexec_called=1
}
precmd() {
    if [ "$?" != 0 ] && [ "$preexec_called" = 1 ]
    then echo ✘; unset preexec_called; fi
}

#_input_prompt() {
#    echo $?
#    echo "%{$fg_bold[green]%}%{$reset_color%}%"
#}

PROMPT=$'
%{$fg_bold[green]%}[%n@%m] %{$fg[blue]%}%D{[%H:%M:%S]} %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg_bold[blue]%} %{$reset_color%}'


#   >-[  ]  ◖
#%{$fg[white]%}[skoop@ms7d54] [17:40:28] [~]%{$reset_color%}
#
#  ~/.config/nvim  aws|default  17:39  
#◖

#format = """
#[  ](bg:#a3aed2 fg:#090c0c)\
#[](bg:#769ff0 fg:#a3aed2)\
#$directory\
#[](fg:#769ff0 bg:#394260)\
#$git_branch\
#$git_status\
#[](fg:#394260 bg:#212736)\
#$aws\
#[](fg:#212736 bg:#1d2230)\
#$time\
#[ ](fg:#1d2230)\
#\n$character"""
