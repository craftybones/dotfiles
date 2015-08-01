export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

[[ -f $HOME/.dircolors ]] && eval $(dircolors -b $HOME/.dircolors)
  if $_isxrunning; then

    [[ -f $HOME/.dircolors_256 ]] && eval $(dircolors -b $HOME/.dircolors_256)

    export TERM='xterm-256color'

     B='\[\e[1;38;5;33m\]'
    LB='\[\e[1;38;5;81m\]'
    GY='\[\e[1;38;5;242m\]'
     G='\[\e[1;38;5;82m\]'
     P='\[\e[1;38;5;161m\]'
    PP='\[\e[1;38;5;93m\]'
     R='\[\e[1;38;5;196m\]'
     Y='\[\e[1;38;5;214m\]'
     W='\[\e[0m\]'

    get_prompt_symbol() {
      [[ $UID == 0 ]] && echo "#" || echo "\$"
    }

    if [[ $PS1 && -f /usr/share/git/git-prompt.sh ]]; then
      source /usr/share/git/completion/git-completion.bash
      source /usr/share/git/git-prompt.sh

      export GIT_PS1_SHOWDIRTYSTATE=1
      export GIT_PS1_SHOWSTASHSTATE=1
      export GIT_PS1_SHOWUNTRACKEDFILES=0

      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
      export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
    else
      #export PS1="$GY[$Y\u$GY@$P\h$GY:$B\w$GY]$W\$(get_prompt_symbol) "
      export PS1="$GY[$Y\u$GY:$B\w$GY]$W\$(get_prompt_symbol) "
    fi
  else
    export TERM='xterm-color'
  fi
