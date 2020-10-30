# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set TERM
export TERM=xterm-256color
export GPG_TTY=$(tty)

# Autoload Completion
autoload -U +X compinit && compinit

# Set PATH
if [[ -z "$PATH" || "$PATH" == "/bin:/usr/bin" ]]
then
	export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games:$HOME/.cargo/bin"
fi

# Set Histroy file
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt SHARE_HISTORY

# Source default Debian zshrc
source /etc/zsh/zshrc || 1

# Fuzzy Search
export FZF_BASE=/usr/bin/fzf

# Case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Aliases
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# Debian stuff
export DEBEMAIL=avronr@tuta.io
export DEBFULLNAME='Abraham Raji'
alias lintian='lintian -iIEcv --pedantic --color auto'
alias git-import-dsc='git-import-dsc --author-is-committer --pristine-tar'
alias clean='fakeroot debian/rules clean'

# Useful scripts
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/oh-my-zsh/git.plugin.zsh
source ~/.zsh/oh-my-zsh/alias-finder.plugin.zsh
source ~/.zsh/oh-my-zsh/colored-man-pages.plugin.zsh
source ~/.zsh/oh-my-zsh/debian.plugin.zsh
source ~/.zsh/oh-my-zsh/django.plugin.zsh
source ~/.zsh/oh-my-zsh/fzf.plugin.zsh

# Theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
