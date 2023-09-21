# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Sets a time-stamp format for the command execution time stamp shown in the
# history command output. Uses the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="%Y.%m.%d"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/Configs/ZSH_CUSTOM

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
		git
		tmux
		zsh-syntax-highlighting
		zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

# User configuration

## Custom exports
source $HOME/Configs/exportrc

## export MANPATH="/usr/local/man:$MANPATH"

## You may need to manually set your language environment
## export LANG=en_US.UTF-8

## Preferred editor for local and remote sessions
## if [[ -n $SSH_CONNECTION ]]; then
##   export EDITOR='vim'
## else
##   export EDITOR='mvim'
## fi

## Compilation flags
## export ARCHFLAGS="-arch x86_64"

## Custom aliases
source $CONFIGS/aliasrc


## Things only on linux

if [ "$(uname -s)" != "Darwin" ]; then
	eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
	eval `keychain --quiet --eval troper-lan-1.0 troper-main-1.0`
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
