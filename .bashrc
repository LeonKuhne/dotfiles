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

function notify() {
	"$@"
	play -v .1 /data/Music/tada.wav > /dev/null 2>&1
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
	if [ "$@" = "-" ]; then
		CUR_LOC=$BACK_LOC
	fi

	cd $CUR_LOC
	
	
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
	c $@
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

echo -e "$COLOR_DARKCYAN"
~/.cd

if [[ $bind_nethogs == true ]]; then	#   #  #### ##### w
	sudo nethogs			##  # #       #   o
	exit			        # # # ###     #   r
fi				        #   # #####   #   k

if [[ $bind_iftop == true ]]; then	 ####  #TOP  
	sudo iftop			  #   # 
	exit				  #   ###     
fi					####  #    

# bash start location
cd

export VISUAL=vim;
# bash prompt
PS1='\e[35m\u.\h \W> \e[39m'
