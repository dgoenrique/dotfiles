PROMPT=' %{$fg_bold[green]%}$(get_pwd)%{$reset_color%} $(git_prompt_info)${prompt_suffix}'

local prompt_suffix="%(?:%{$fg_bold[green]%}❯:%{$fg_bold[red]❯) "

# by shashankmehta (https://github.com/shashankmehta)
function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[white]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
