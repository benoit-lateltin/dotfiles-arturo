#!/usr/bin/env bash
OFF="\033[0m"

# Regular colors
BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
GRAY="\033[0;37m"

# Light colors
LBLACK="\033[0;90m"
LRED="\033[0;91m"
LGREEN="\033[0;92m"
LYELLOW="\033[0;93m"
LBLUE="\033[0;94m"
LPURPLE="\033[0;95m"
LCYAN="\033[0;96m"
LWHITE="\033[0;97m"

# Bold colors
BGRAY="\033[1;30m"
BRED="\033[1;31m"
BGREEN="\033[1;32m"
BYELLOW="\033[1;33m"
BBLUE="\033[1;34m"
BPURPLE="\033[1;35m"
BCYAN="\033[1;36m"
BWHITE="\033[1;37m"

# Bold light colors
BLBLACK="\033[1;90m"
BLRED="\033[1;91m"
BLGREEN="\033[1;92m"
BLYELLOW="\033[1;93m"
BLBLUE="\033[1;94m"
BLPURPLE="\033[1;95m"
BLCYAN="\033[1;96m"
BLWHITE="\033[1;97m"

HOST="\h"
USR="\u"
DIR="\w"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUPSTREAM="auto git"
export GIT_PS1_DESCRIBE_STYLE="branch"
export PROMPT_DIRTRIM=2
export PROMPT_COMMAND="history -a; __git_ps1 "'"${GRAY}${USR}${OFF}@${HOST}:${LPURPLE}${DIR}${OFF}" "\$ " "{%s}"'

if [[ -n "$DOCKER" ]]; then
  export PROMPT_COMMAND="history -a; __git_ps1 "'"${CYAN}docker${OFF}@${HOST}:${LPURPLE}${DIR}${OFF}" "\$ " "{%s}"'
fi
