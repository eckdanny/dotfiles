#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function doIt() {
	rsync --exclude ".git/" \
		--exclude "ohmyzsh/" \
		--exclude "scripts/" \
		--exclude ".github" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;

		./scripts/brew.sh
		./scripts/node.sh
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
