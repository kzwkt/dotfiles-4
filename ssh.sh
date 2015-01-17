ok directory $HOME/.ssh

destination $HOME/.ssh

for file in $HOME/.dotfiles/ssh/*; do
  ok symlink "$(basename $file)" $file
done
