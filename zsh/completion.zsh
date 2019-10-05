# Load and initialize the completion system ignoring insecure directories with a
# cache time of 20 hours, so it should almost always regenerate the first time a
# shell is opened each day.
#
# Below code taken from comment by `laggardkernel` at bottom of the `htr3n` ref
#
# ref - https://htr3n.github.io/2018/07/faster-zsh/#optimising-shell-prompts
autoload -Uz compinit
_comp_files=(${ZDOTDIR:-$HOME}/.zcompdump(Nm-20))
if (( $#_comp_files )); then
  compinit -i -C
else
  compinit -i
fi
unset _comp_files
