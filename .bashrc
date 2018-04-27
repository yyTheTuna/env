#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

alias ll='ls -l --color=auto'
alias mk='make -j4'
alias gc='grep --ignore-case --color -r --include \*.h --include \*.cpp'
alias gg='grep --ignore-case --color -r'
alias fl='find -L . -iname'
alias hh='history'

alias tn='ssh yzhang@node.tolotechnologies.com'
alias pg='ssh 192.41.29.132'
alias dce1='ssh -p 20024 tom@59.46.178.117'
alias shct1='ssh -p 20301 tom@tolo-shct-1'
alias shct2='ssh -p 64901 tom@210.5.151.245'
alias shft1='ssh -p 30187 tom@180.169.85.220'
alias shgf1='ssh -p 62232 tom@180.166.182.8'
alias shgt1='ssh -p 30001 tom@220.248.117.203'
alias shhb1='ssh tom@10.200.66.197'
alias czce2='ssh -p 10027 tom@123.161.209.190'
alias aliyun2='ssh tom@106.14.193.143'
alias cme1='ssh tom@10.187.81.2'



alias tocom1='ssh tom@tolo-tocom-1'


export TERM=xterm

xset b off

#ulimit -c unlimited

PROMPT_COMMAND=prompt_cmd
prompt_cmd()
{
  CUTOFFLINE=""
  MYCURMACHINE=`uname -n`
  COLUMNS=`stty size | cut -d" " -f2`
  i=0
  while test "$i" -lt "$COLUMNS"
  do
    ((i+=1))
    CUTOFFLINE=$CUTOFFLINE"-"
  done

  PS1="\[\e[37m\]$CUTOFFLINE\n\[\e[36m\]$HOSTNAME:\[\e[31m\]\w\n\[\e[32m\][\u] \[\e[33m\]\D{%a} \t \[\e[37m\]$\[\e[0m\] "
}

settitle() {
  printf "\033k$1\033\\"
}

ssh1() {
  settitle "$*"
  command ssh "$@"
  settitle "bash"
}

