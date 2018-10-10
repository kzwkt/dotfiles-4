# `a` with no arguments opens the current directory in Atom Editor, otherwise
# opens the given location
function a() {
  if [ $# -eq 0 ]; then
    atom .;
  else
    atom "$@";
  fi;
}

# `s` with no arguments opens the current directory in Sublime Text, otherwise
# opens the given location
function s() {
  if [ $# -eq 0 ]; then
    subl .;
  else
    subl "$@";
  fi;
}

# `v` with no arguments opens the current directory in Vim, otherwise opens the
# given location
function v() {
  if [ $# -eq 0 ]; then
    vim .;
  else
    vim "$@";
  fi;
}

# `o` with no arguments opens the current directory in Finder, otherwise opens
# the given location
function o() {
  if [ $# -eq 0 ]; then
    open .;
  else
    open "$@";
  fi;
}

# `m` with no arguments opens the current directory in Marta, otherwise opens
# the given location
function m() {
  if [ $# -eq 0 ]; then
    marta .;
  else
    marta "$@";
  fi;
}

# `t` is a shorthand for `tree` with hidden files and color enabled, ignoring
# the `.git` directory, listing directories first. The output gets piped into
# `less` with options to preserve color and line numbers, unless the output is
# small enough for one screen.
function t() {
  tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}
