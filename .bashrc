source ~/.profile
PS1="\u@\h \w $ "

# umask 2
export CUPS_SERVER=print

# stty susp undef dsusp undef
# eval `tset -m "dialup:?vt100" -m "guru:guru-50x80" -m ":$TERM" -e\^H -k\^U -s -Q`

# command to list only dotfiles
alias dots="ls -a --format=across | egrep '^\.'"
# command to list disk usage in the current directory
alias usage="du -hd 1 | sort -rh"
# command to compile a latex file and open the pdf
function compiletex() {
	rm "$1.bbl"
	rm "$1.aux"
	latex $1
	bibtex $1
	latex $1
	latex $1
	dvipdfm "$1.dvi"
	acroread "$1.pdf"
}

# ant
alias einstall="easy_install --prefix=~"
alias directories="ls -d */"

# TODO list
#source ~/bin/todopath
#if [[ -z "$TODOFILE" ]]; then
	#export TODOFILE=~/TODO.txt
#fi
#echo Welcome, Hassler! Here is your TODO list:
#echo
#todo read

PERL_MB_OPT="--install_base \"/u/jthurst3/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/u/jthurst3/perl5"; export PERL_MM_OPT;

# from http://mah.everybody.org/docs/ssh
# setup ssh-agent
#


# set environment variables if user's agent already exists
# GitHub ssh key
if [[ -z `pgrep -u $(whoami) ssh-agent` ]]; then
	eval `ssh-agent -s` >/dev/null
fi
SSH_AUTH_SOCK=$(ls -lt /tmp/ssh-*/agent.* 2> /dev/null | grep $(whoami) | head -n 1 | awk '{print $9}')
SSH_AGENT_PID=$(echo $SSH_AUTH_SOCK | cut -d. -f2)
[ -n "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK
[ -n "$SSH_AGENT_PID" ] && export SSH_AGENT_PID

ssh-add ~/.ssh/github_rsa &>/dev/null
ssh-add ~/.ssh/csug &>/dev/null
ssh-add ~/.ssh/bitbucket_rsa &>/dev/null

function csroch() {
	machine=
	csug_machine=
	case "$1" in
		cycle*)
			machine=$1;;
		"")
			machine=cycle1;;
		*)
			machine=cycle1
			csug_machine=$1;;
	esac
	if [[ -z $csug_machine ]]; then
		ssh "jthurst3@$machine.cs.rochester.edu"
	else
		ssh "jthurst3@$machine.cs.rochester.edu" -t "ssh $csug_machine"
	fi
}

# thefuck
alias fuck='$(thefuck $(fc -ln -1)); history -r'

# 173 grading
alias prep="/localdisk/hassler/coloring-grading/prepare_directory.sh ."
alias feed="/localdisk/hassler/coloring-grading/make_feedback.sh $*"
alias vopen="vim {main,graph}.{c,h} makefile"
function moveon() {
    username=$(echo $OLDPWD | awk -F'/' '{print $5}')
    next=$(ls -d */ | grep "$username" -A1 | tail -1)
    echo "$next"
    cd "$next"
}

# shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."



# use vi mode
set -o vi

#case $- in 
    #(*i*) exec zsh;;
    #(*) ;;
#esac
