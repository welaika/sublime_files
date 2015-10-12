#!/bin/bash

OS=$(uname)
BACKUP_DIR="$(pwd)/backup"
SUBLIME_FILES="$(pwd)/sublime/User"

if [[ $OS == 'Darwin']]; then
	SUBLIME_DEST_DIR="${HOME}/Library/Application Support/Sublime Text 3/Packages/User"
elif [[ $OS == "Linux" ]]; then
	SUBLIME_DEST_DIR="${HOME}/.config/sublime-text-3/Packages/User/"
else
	warn "OS not supported"
	exit 1
fi

function warn() {
  echo "$(tput bold)$(tput setaf 3)  *** ${1}$(tput sgr0)"
}

function backup_sublime() {
	[[ -d "$SUBLIME_DEST_DIR" && ! -L "$SUBLIME_DEST_DIR" ]] || return;

	backup="${BACKUP_DIR}/sublime/User"
	if [[ -d "$backup" ]]; then
		warn "$backup already exists"
	else
		cp -r "$SUBLIME_DEST_DIR" ${backup} && rm -rf "$SUBLIME_DEST_DIR"
	fi
}

function link_sublime() {
	if [[ -d "$SUBLIME_DEST_DIR" ]]; then
		warn "${SUBLIME_DEST_DIR} already exists"
	elif [[ -L "$SUBLIME_DEST_DIR"]]; then
		warn "${SUBLIME_DEST_DIR} is already already a symlink"
	else
		ln -s $SUBLIME_FILES "${SUBLIME_DEST_DIR}"
	fi
}

function sublime() {
	backup_sublime
	link_sublime
}


############################################

sublime

############################################
