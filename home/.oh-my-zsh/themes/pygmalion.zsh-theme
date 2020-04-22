# Yay! High voltage and arrows!

prompt_setup_pygmalion(){
  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}[±]"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}[✔]"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

  if [ $UID -eq 0 ]; then PLEVEL="(root)#"; else PLEVEL="$"; fi
  base_prompt='%{$fg_bold[yellow]%}%n@%m%{$reset_color%}:%{$reset_color%}%{$fg_bold[blue]%}%1~%{$reset_color%}'
  post_prompt='%{$fg[white]%}$PLEVEL%{$reset_color%} '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_pygmalion_precmd)
}

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  PROMPT="$base_prompt$gitinfo$post_prompt"
}

prompt_setup_pygmalion
