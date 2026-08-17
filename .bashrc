# ------------------------------------------------------------------------------
# Bash Theme

# Skip theme setup if not running interactively
case $- in
    *i*) ;;
      *) return;;
esac

# Set up themed command line prompt
COLOR_DEFAULT='\[\e[0m\]'
COLOR_YELLOW='\[\e[38;5;220m\]'
COLOR_BLUE='\[\e[1;34m\]'
export PS1="${COLOR_DEFAULT}▶ \h ▶ \u ▶ ${COLOR_YELLOW}\w ${COLOR_BLUE}▶ ${COLOR_DEFAULT}"

# Set up colors for common commands
if [ -r ~/.dircolors ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'