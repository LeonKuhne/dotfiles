#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#alias trello="trello -b $SELECTED_BOARD"

function t() {

	if [ "$1" == "set-board" ]; then
		TRELLO_BOARD=$2
	elif [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
		trello -h
		echo -e "  set-board\t     Set the enabled board to use"
	else
		if [ "$TRELLO_BOARD" != "" ]; then
			echo -e "On board: $TRELLO_BOARD"
			trello $@ -b "$TRELLO_BOARD"
		else
			trello $@
		fi
	fi
}

PS1='[\u@\h \W]\$ '
