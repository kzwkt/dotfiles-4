ok directory $HOME/.config/beets

cd $HOME/.config/beets

for file in $HOME/.dotfiles/beets/*; do
  ok symlink "$(basename $file)" $file
done
unset file
