#
# ~/.bashrc
#

COLOR_GREEN="\e[38;5;22m"
COLOR_DARKMAGENTA="\e[38;5;53m"
COLOR_DARKCYAN="\e[38;5;23m"
COLOR_RESET="\e[39m"

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias cc='clear'
alias ls='ls --color=auto'
alias showkey='sudo showkey'
alias gdiff="git diff -U0 | grep '^[+-]' | grep -Ev '^(--- a/|\+\+\+ b/)'"
alias rm='rm -i'
alias yom='python /home/x/.tools/yom/__main__.py & exit'
alias glgg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

function notify() {
	"$@"
	play -v .1 /data/Music/tada.wav > /dev/null 2>&1
}

function send(){
	if [ "$1" = "down" ]; then
        echo -e "here you go satan... *drops $2*"
        # send to hell
		scp $2 x@172.245.158.116:~/$3
        echo "SATAN: I will use this to torture infidels."
    fi
	if [ "$1" = "in" ]; then
        echo -e "$2, noose is being tightened"
        # send to school
		scp $2 lxk1170@banjo.rit.edu:~/$3
        echo "eehhhchcchhllle\n\n\n..."
    fi

}

# Reach Server
function reach(){
	if [ "$1" = "hell" ]; then
		ssh x@172.245.158.116
	fi
	if [ "$1" = "admin" ]; then
		echo "you still got \$9 on vultr"
		xdg-open "https://billing.virmach.com/clientarea.php?action=services"
	fi
	if [ "$1" = "banjo" ]; then
		echo "driving to school..."
		ssh lxk1170@banjo.rit.edu
	fi
    if [ "$1" = "inv" ]; then
		echo "sorting through incels..."
        ssh ec2-user@ec2-3-16-181-169.us-east-2.compute.amazonaws.com
	fi
}

# Teleport to Directory
BACK_LOC="/home/x"
LAST_LOC="/home/x"
CUR_LOC="/home/x"
function tp(){
	BACK_LOC=$LAST_LOC
	LAST_LOC=$CUR_LOC

	if [ "$@" = "school" ]; then
		CUR_LOC="/data/School"
	fi
	if [ "$@" = "down" ]; then
		CUR_LOC="/data/Downloads"
	fi
	if [ "$@" = "inv" ]; then
		CUR_LOC="/data/School/SWEN343/swen343-inventory"
	fi
	if [ "$@" = "-" ]; then
		CUR_LOC=$BACK_LOC
	fi

	c $CUR_LOC
	
	
}

# Change Directory
function c() {
	# test if file exists
	test -f .cd
	cd $@
	if [ -f ".cd" ]; then
		. .cd
	fi
}

function cl() {
	# cd and ls
	c $@
	ls
}

function ccl() {
	# cd, clear, and ls
    if [ ! $@ -eq 0  ]; then
    	c $@
    fi
	clear
	ls
}

function geet() {
	git add . && git commit -m "$@"
}

function git-big() {
	git rev-list --all --objects | \
	    sed -n $(git rev-list --objects --all | \
	    cut -f1 -d' ' | \
	    git cat-file --batch-check | \
	    grep blob | \
	    sort -n -k 3 | \
	    tail -n40 | \
	    while read hash type size; do 
	         echo -n "-e s/$hash/$size/p ";
	    done) | \
	    sort -n -k1
}

function git-clear() {
	git checkout --orphan latest_branch
	git add -A
	git commit -am "resetting"
	git branch -D $@
	git branch -m $@
	git push -f origin $@
}

function md() {
	pandoc $@ | lynx -stdin
}

function plog() {
	tail -f /proc/$@/fd/1
}

if [[ $bind_nethogs == true ]]; then
	sudo nethogs
	exit			  
fi				    

if [[ $bind_iftop == true ]]; then
	sudo iftop
	exit	
fi	

# bash start location
cd

# print header
echo -e "$COLOR_DARKCYAN"
~/.cd

export VISUAL=vim;
# bash prompt
PS1='\e[35m\u.\h \W> \e[39m'
