# set TERM
export TERM=xterm-256color

# Autoload Completion
autoload -U +X compinit && compinit

# Set PATH
if [[ -z "$PATH" || "$PATH" == "/bin:/usr/bin" ]]
then
	export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games"
fi

# Source default Debian zshrc
source /etc/zsh/zshrc || 1

# Aliases
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# Debian stuff
export DEBEMAIL=your@email.domain
export DEBFULLNAME='Your Name'
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

# Theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
