    BOLD=$(tput bold)
    RESET=$(tput sgr0)
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      BLACK=$(tput setaf 235)
      BLACK0=$(tput setaf 0)
      BLACK0_BG=$(tput setab 0)
      BLACK1=$(tput setaf 237)
      BLACK1_BG=$(tput setab 237)
      BLACK2=$(tput setaf 239)
      BLACK2_BG=$(tput setab 239)
      RED=$(tput setaf 124)
      RED_BG=$(tput setab 124)
      GRAY=$(tput setaf 246)
      GRAY_BG=$(tput setab 246)
      WHITE=$(tput setaf 223)
      ORANGE_BG=$(tput setab 208)
      YELLOW=$(tput setaf 178 )
      YELLOW_BG=$(tput setab 178 )
      GRAY_2=$(tput setaf 252)
      GRAY_2_BG=$(tput setab 252)
    else
      BLACK=$(tput setaf 0)
      BLACK1=$(tput setaf 0)
      BLACK1_BG=$(tput setab 0)
      BLACK2=$(tput setaf 0)
      BLACK2_BG=$(tput setab 0)
      RED=$(tput setaf 1)
      RED_BG=$(tput setab 1)
      GRAY=$(tput setaf 7)
      GRAY_BG=$(tput setab 7)
      WHITE=$(tput setaf 7)
      ORANGE_BG=$(tput setab 3)
      YELLOW_BG=GRAY
    fi

PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)'

if [[ ${#VIRTUAL_ENV} -gt 0 ]]
then
	PS1+=$' \uE235 '
	PS1+="$(basename ${VIRTUAL_ENV}) "
fi

PS1+='\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

export PS1
