
# => BEGIN CUSTOMIZATION
#######################################

clear

alias mypath "cd /arm/projectscratch/pd/kabru_pj32000043/top/users/achroh01"

alias g "gvim -p"
alias gd "gvim -d"
alias s "source"
alias s "source"
alias bj "bjobs | grep -v PEND"
alias meld ""
set autolist = ambiguous 
set complete = enhance
set correct =  all

set     red="%{\033[1;31m%}"
set   green="%{\033[1;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set   black="%{\033[0;30m%}"


#set prompt = '[%n@%m %c]$ '
set prompt = "[${red}%n${green}@%m][${blue}%c${green}] %# "
#alias precmd 'set prompt = "[${red}%n${black}@%m][${blue}$cwd${black}] %# "'
#set prompt = "[${red}%n${black}@%m][${blue}$cwd${black}] %# "


