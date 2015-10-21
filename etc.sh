destination /etc

for file in $HOME/.dotfiles/etc/*; do
  ok file "$(basename $file)" $file --owner=root
done
unset file
