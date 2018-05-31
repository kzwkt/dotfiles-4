ok directory $HOME/.atom

cd $HOME/.atom

for file in $HOME/.dotfiles/atom/*; do
  ok symlink "$(basename $file)" $file
done
unset file

ok apm advanced-open-file
ok apm autocomplete-modules
ok apm autocomplete-paths
ok apm docblockr
ok apm editorconfig
ok apm file-icons
ok apm hyperlink-hyperclick
ok apm ide-typescript
ok apm language-docker
ok apm language-dot
ok apm language-dotenv
ok apm language-gitignore
ok apm language-hjson
ok apm language-latex
ok apm language-protobuf
ok apm language-scala
ok apm language-systemd
ok apm language-terraform
ok apm language-viml
ok apm language-vue
ok apm linter
ok apm linter-eslint
ok apm linter-hjson
ok apm linter-jsonlint
ok apm linter-stylelint
ok apm linter-tslint
ok apm prettier-atom
ok apm sort-lines
ok apm vim-mode-plus
ok apm zentabs
