# set TERM
export TERM=xterm-256color

# Set PATH
if [[ -z "$PATH" || "$PATH" == "/bin:/usr/bin" ]]
then
	export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games"
fi

# Source default Debian zshrc
source /etc/zsh/zshrc || 1

# Debian stuff
export DEBEMAIL=your@email.domain
export DEBFULLNAME='Your Name'
alias lintian='lintian -iIEcv --pedantic --color auto'
alias git-import-dsc='git-import-dsc --author-is-committer --pristine-tar'
alias clean='fakeroot debian/rules clean'
