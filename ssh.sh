ok directory $HOME/.ssh

cd $HOME/.ssh

for file in $HOME/.dotfiles/ssh/*; do
  ok symlink "$(basename $file)" $file
done
unset file
