# https://batsov.com/articles/2025/03/01/back-to-the-basics-zsh-without-oh-my-zsh/

# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Configure the push directory stack (most people don't need this)
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Move to directories without cd
setopt autocd

# Initialize completion
autoload -U compinit; compinit

# load zgen
source "${HOME}/.dotfiles/zsh/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/command-not-found
    zgen load chrissicool/zsh-256color               # Set terminal to 256 colors
    zgen load zsh-users/zsh-completions src

    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-completions
    zgen save
fi

# -------------------

## ZSH Utitliy
# from develop branch.

export DOTFILES_LOG=/tmp/mildronize-dotfiles.log
alias zshlog="tail -f $DOTFILES_LOG "

# Use this function when run some script on start up, when hide log from stdout
function _zsh_startup {
  echo "-----------------------------------------------------------------" >> $DOTFILES_LOG
  date >> $DOTFILES_LOG
  $@ >> $DOTFILES_LOG
}

# run reset Zgen bootstrap & reload source ~/.zshrc
function rezsh {
  echo "-----------------------------------------------------------------" >> $DOTFILES_LOG
  echo "Reloading ZSH config" >> $DOTFILES_LOG
  date >> $DOTFILES_LOG
  rm -f ${ZGEN_INIT}
  source ~/.zshrc >> $DOTFILES_LOG
}

# -----------------------
# CLI Replacement, This will be wrong when run script with native CLI, disable this when needed
# -----------------------

alias ls='eza'
alias http='xh'

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"

# Setup fmt
eval "$(fnm env --use-on-cd --shell zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"

# -----------------------
# Program aliases
# -----------------------

alias python='python3'
# Kube
alias k='kubectl' # kubectl alias


# -----------------------
# .git alias from oh-my-zsh
# https://gist.github.com/DavidToca/3086571
# -----------------------

# # Aliases
# alias g='git'
# compdef g=git
# alias gst='git status'
# compdef _git gst=git-status
# alias gl='git pull'
# compdef _git gl=git-pull
# alias gup='git fetch && git rebase'
# compdef _git gup=git-fetch
# alias gp='git push'
# compdef _git gp=git-push
# gdv() { git diff -w "$@" | view - }
# compdef _git gdv=git-diff
# alias gc='git commit -v'
# compdef _git gc=git-commit
# alias gca='git commit -v -a'
# compdef _git gca=git-commit
# alias gco='git checkout'
# compdef _git gco=git-checkout
# alias gcm='git checkout master'
# alias gb='git branch'
# compdef _git gb=git-branch
# alias gba='git branch -a'
# compdef _git gba=git-branch
# alias gcount='git shortlog -sn'
# compdef gcount=git
# alias gcp='git cherry-pick'
# compdef _git gcp=git-cherry-pick
# alias glg='git log --stat --max-count=5'
# compdef _git glg=git-log
# alias glgg='git log --graph --max-count=5'
# compdef _git glgg=git-log
# alias gss='git status -s'
# compdef _git gss=git-status
# alias ga='git add'
# compdef _git ga=git-add
# alias gm='git merge'
# compdef _git gm=git-merge
# alias grh='git reset HEAD'
# alias grhh='git reset HEAD --hard'

# # Git and svn mix
# alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
# compdef git-svn-dcommit-push=git

# alias gsr='git svn rebase'
# alias gsd='git svn dcommit'
# #
# # Will return the current branch name
# # Usage example: git pull origin $(current_branch)
# #
# function current_branch() {
#   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#   echo ${ref#refs/heads/}
# }

# function current_repository() {

#   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#   echo $(git remote -v | cut -d':' -f 2)
# }

# # these aliases take advantage of the previous function
# alias ggpull='git pull origin $(current_branch)'
# compdef ggpull=git
# alias ggpush='git push origin $(current_branch)'
# compdef ggpush=git
# alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
# compdef ggpnp=git
# fnm
FNM_PATH="$HOME/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# Claude multiple account support
alias claude-personal="CLAUDE_CONFIG_DIR=~/.claude-personal claude"
alias claude-work="CLAUDE_CONFIG_DIR=~/.claude-work claude"