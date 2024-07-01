export LANG="en_US.UTF-8"
export EDITOR="nvim"
export VISUAL="nvim"
export WORDCHARS="*?[]~=&;&%^(){}<>"
export PAGER="less"
# use if batman not installed from bat-extras
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# zsh
export ZPLUGINDIR="${ZPLUGINDIR:-$ZDOTDIR/plugins}"

# zim - zsh plugin manager
export ZIM_HOME="${ZIM_HOME:-$XDG_CACHE_HOME/zim}"
export ZIM_CONFIG_FILE="${ZIM_CONFIG_FILE:-$ZDOTDIR/.zimrc}"

# homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

# pnpm
export PNPM_HOME="${XDG_DATA_HOME}/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# dotfiles
export DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

# fzf
export FZF_DEFAULT_OPTS='--tmux 80%'

# zsh-vi-mode
export ZVM_VI_SURROUND_BINDKEY="s-prefix"
# export ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

# ensure path arrays do not contain duplicates.
typeset -gU fpath path cdpath

path=(
  "/opt/homebrew/bin"
  "/opt/homebrew/sbin"
  "/opt/homebrew/opt/node@20/bin"
  "${HOME}/.cargo/bin"
  "${HOME}/.local/bin"
  "${HOME}/.orbstack/bin"
  "${HOME}/.local/share/fnm"
  $path
)

cdpath=(
  "${HOME}/Projects"
  "${HOME}/Projects/github"
  "${HOME}/Projects/gitlab"
  $cdpath
)

fpath=(
  "${ZDOTDIR}/functions"
  $(brew --prefix)/share/zsh/site-functions
  "${ZDOTDIR}/completions"
  "/Applications/OrbStack.app/Contents/Resources/completions/zsh"
  $fpath
)


