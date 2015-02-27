# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
 
export MACVIM=/usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/Resources/vim
alias vim='mvim'
