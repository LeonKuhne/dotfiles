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

	elif [ "$1" == "get-board" ]; then
		if [ "$TRELLO_BOARD" != "" ]; then
			echo -e "Board Selected: $TRELLO_BOARD"
		else
			echo "No board selected"
		fi

	elif [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
		trello -h
		echo -e "  set-board\t     Set the enabled board to use"

	else
		if [ "$TRELLO_BOARD" != "" ]; then
			trello "$@" -b "$TRELLO_BOARD"
		else
			trello "$@"
		fi

	fi
}

YELLOW='\[\e[1;33m\]'
PINK='\[\e[1;35m\]'
RESET='\[\e[0m\]'
PS1="$YELLOW\u$PINK \W> $RESET"
