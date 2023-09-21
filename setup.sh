CONFIGS="${HOME}/Configs"

# Global configs

link_home () {
	sudo rm -r ${HOME}/.$1
	ln -s $CONFIGS/$1 ${HOME}/.$1
}

link_conf () {
	sudo rm -r ${HOME}/.config/$1
	ln -s $CONFIGS/$1 ${HOME}/.config/$1
}

link () {
	sudo rm -r $2
	ln -s $CONFIGS/$1 $2
}

# TODO: Make these things below a script/loop instead of hardcoding

	link_home "zshrc"

	link_home "tmux.conf"

	link_home "vim"

	link_home "p10k.zsh"
	
	link_home "profile"
	
	link_home "oh-my-zsh"

	link_home "gitconfig"

	# link_conf "MusicBrainz"

	# Not macs only
	if [ "$(uname -s)" != "Darwin" ]; then
		link "fonts" ${HOME}/.local/share/fonts
		fc-cache -f -v
	fi

	# Gnome terminal profiles
	# dconf load /org/gnome/terminal/legacy/profiles:/ < $CONFIGS/gnome-terminal-profiles.dconf
