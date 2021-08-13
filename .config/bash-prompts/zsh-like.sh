# prompt
FMT_BOLD="\e[1m"
FMT_RESET="\e[0m"
FMT_UNBOLD="\e[21m"
FG_BLACK="\e[30m"
FG_BLUE="\e[34m"
FG_CYAN="\e[36m"
FG_GREEN="\e[32m"
FG_MAGENTA="\e[35m"
FG_RED="\e[31m"
FG_WHITE="\e[97m"
BG_BLUE="\e[44m"
BG_GREEN="\e[42m"
BG_MAGENTA="\e[45m"

export PS1=\
"\n ${FG_BLUE}╭─${FG_GREEN}${BG_GREEN} ${FMT_BOLD}${FG_RED} ${FG_BLACK}\u${FMT_UNBOLD} ${FG_GREEN}${BG_BLUE} "\
"${FG_BLACK}\w ${FMT_RESET}${FG_BLUE}"\
"\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | xargs -I BRANCH echo -n \"${BG_MAGENTA} ${FG_WHITE} BRANCH ${FMT_RESET}${FG_MAGENTA}\")"\
"\n ${FG_BLUE}╰ ${FG_CYAN}\$ ${FMT_RESET}"
