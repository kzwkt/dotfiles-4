ok directory $HOME/.config/beets

destination $HOME/.config/beets

for file in $HOME/.dotfiles/beets/*; do
  ok symlink "$(basename $file)" $file
done
