#
##  For information on ARMs infrastructure refer to the training document:
#  http://wiki.arm.com/Sysadmin/ClusterEnvironmentTraining
#  #  modulesinfrastructuretraining.pptx
#  #######################################
#  #
#  # => USER SET => LD_LIBRARY_PATH
#  # setenv LD_LIBRARY_PATH <user setting>
#  # - user setting will always be appended to $LD_LIBRARY_PATH
#  #######################################
#  #
#  # => USER SET => PATH
#  # set path = ( "<user settings>")
#  # - user setting will always be appended to $PATH
#  #######################################
#  #
#  # => STANDARD shell init & cluster access
#  #######################################
#  source /arm/tools/setup/init/tcsh
#  module load arm/cluster
#  #
#  # => BEGIN CUSTOMIZATION
#  #######################################
#
source /arm/tools/setup/init/tcsh
module load arm/cluster
#
# => BEGIN CUSTOMIZATION
#######################################

clear

alias mypath "cd /arm/projectscratch/pd/kabru_pj32000043/top/users/achroh01"

alias g "gvim -p"
alias gd "gvim -d"
alias s "source"
alias kclone "git clone ssh://$USER@eu-gerrit-2.euhpc.arm.com:29418/cpu/kabru"
alias olyclone "git clone 'ssh://na-gerrit-1.nahpc.arm.com:29418/cores/olympus'"
alias dvk "git clone ssh://$USER@hw-gerrit.euhpc.arm.com:29418/cpudv/dvkit dvkit"
alias valsrc "git clone ssh://$user@eu-gerrit-2.euhpc.arm.com:29418/cpudv/targets/olympus validation_src"
#alias git "/arm/tools/git/git/2.43.0/rhe7-x86_64/bin/git"
alias gitk "/arm/tools/git/git/2.43.0/rhe7-x86_64/bin/gitk" 
#alias kabru_dvs "cd /arm/projectscratch/pd/kabru_pj32000043/top/users/mitv01/work_dir"
#alias kabru "cd /arm/projectscratch/pd/kabru_pj32000043/top/users/mitv01/"
#alias kabru_dvsl "cd /arm/projectscratch/pd/kabru_pj32000043/top/users/mitv01/work_dir_dvs_31_10"
#alias kabru_raven "cd /arm/projectscratch/pd/kabru_pj32000043/top/users/mitv01/work_dir_raven"
alias s "source"
alias bj "bjobs | grep -v PEND"
#alias tk "/arm/tools/tkdiff/tkdiff/5.6/linux64/bin/tkdiff"
#alias kdiff "/arm/tools/kdiff3/kdiff3/0.9.98/rhe7-x86_64/bin/kdiff3"
alias meld ""
alias soffice "/arm/tools/libreoffice/libreoffice/5.3.5/rhe7-x86_64/opt/libreoffice5.3/program/soffice"
alias bs 'bsub -Is -P PJ32000043 -Jd top_val-PD-sim_vcs -W 2000 -R "rusage[mem=8192]" -R "rhe7"'
alias b64 'bsub -Is -P PJ02519D -Jd top_val-PD-sim_vcs -W 2000 -R "rusage[mem=65536]" -R "rhe7"'
alias b32 'bsub -Is -P PJ02519D -Jd top_val-PD-sim_vcs -W 2000 -R "rusage[mem=32768]" -R "rhe7"'
alias b16 'bsub -Is -P PJ02519D -Jd top_val-PD-sim_vcs -W 2000 -R "rusage[mem=16384]" -R "rhe7"'
alias bnwave 'b64 blk_debug --vcs --dir '
alias bsfg 'bsub  -app FG -Is -P PJ02519D -Jd top_val-PD-sim_vcs -W 2000 -R "rusage[mem=8192]" -R "rhe7"'
alias ff "readlink -f "
#alias bug_info "cd /arm/projectscratch/pd/kabru_pj32000043/top/topdv/kabru_bug_info/mitv01"
#alias setup_dvs_dir "source ~/setup_dvs_dir.txt"
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

#alias euhpc 'echo mitv01@10.6.26.173:/home/mitv01/'
#alias nahpc2 'echo mitv01@10.120.58.54:/home/mitv01/'
alias stat 'val_report val_report_dvs.cfg ARCH32 -nog -array -config cde_dcls_1'
alias comp 'blk_compile --dfs console:uvm=none --bo cde_dcls_1 --build-clean  --mti'
alias compile 'blk_compile --dfs console:uvm=none:wave=fsdb --bo cde_dcls_1:tarmac=True --build-clean  --mti' 
