export LANG="en_US.UTF-8"
export EDITOR="nvim"
export VISUAL="nvim"
export WORDCHARS="*?[]~=&;&%^(){}<>"

# homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

# ensure path arrays do not contain duplicates.
typeset -gU fpath path cdpath

path=(
  "/opt/homebrew/bin"
  "/opt/homebrew/sbin"
  "${HOME}.cargo/bin"
  $path
)

cdpath=(
  "${HOME}/Projects"
  "${HOME}/Projects/github"
  "${HOME}/Projects/gitlab"
  $cdpath
)

fpath=(
  $(brew --prefix)/share/zsh/site-functions
  "${ZDOTDIR}/completions"
  $fpath
)

bindkey -e
