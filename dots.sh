destination $HOME

for file in $HOME/.dotfiles/dots/*; do
  ok symlink ".$(basename $file)" $file
done
unset file
