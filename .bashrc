#
# ~/.bashrc
#

COLOR_GREEN="\e[38;5;22m"
COLOR_DARKMAGENTA="\e[38;5;53m"
COLOR_DARKCYAN="\e[38;5;23m"
COLOR_RESET="\e[39m"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# this is here because the .startup file sometimes doesn't do it :(
xset r rate 120 13

alias cc='clear'
alias ls='ls --color=auto'
alias showkey='sudo showkey'
alias gdiff="git diff -U0 | grep '^[+-]' | grep -Ev '^(--- a/|\+\+\+ b/)'"

function notify() {
	"$@"
	play -v .1 /data/Music/tada.wav > /dev/null 2>&1
}

function reach(){
	if [ "$1" = "hell" ]; then
		echo "server is in switching... please correct IP"
		ssh root@169.254.169.254
	fi
	if [ "$1" = "admin" ]; then
		xdg-open "https://my.vultr.com/subs/?SUBID=26467058"
	fi
}

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

echo -e -n "$COLOR_GREEN"
echo "Switch Virtual Servers"
echo -e "$COLOR_DARKCYAN"
echo -e "\tCtrl+Alt+F1, F2, F3, ...\n"

echo -e "$COLOR_GREEN""cmake"
echo -e "$COLOR_DARKCYAN"
cat .instructions/cmake.txt | sed 's/^/\t/'

# print out network information (vnstat)
echo -e -n $COLOR_DARKMAGENTA
vnstat -h
echo -e $COLOR_RESET


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

# bash prompt
PS1='\e[35m\u.\h \W> \e[39m'
