# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
# Don't overwrite, append!
setopt APPEND_HISTORY
 
# Killer: share history between multiple shells
setopt SHARE_HISTORY PRINT_EXIT_VALUE
 
# If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS
 
# Even if there are commands inbetween commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS
 
# Pretty    Obvious.  Right?
setopt HIST_REDUCE_BLANKS
 
# If a line starts with a space, don't save it.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
 
# When using a hist thing, make a newline show the change before executing it.
setopt HIST_VERIFY
 
# Save the time and how long a command ran
setopt EXTENDED_HISTORY
 
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt autocd extendedglob notify
 
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select
 
autoload -Uz compinit
compinit
 
# correction
setopt correct extendedglob
 
#bindkey "^P" history-beginning-search-backward
#bindkey "^N" history-beginning-search-forward
 
# prompt
autoload -U promptinit
promptinit
prompt adam2 'magenta' 'yellow' 'yellow'
 
#alias -s pdf="xdg-open"
alias ls='ls -FGhl'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
. /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#alias dquilt for quilt
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"

DEBEMAIL="chuprikovalv@gmail.com"
DEBFULLNAME="Liubov Chuprikova"
export DEBEMAIL DEBFULLNAME
