ok directory $HOME/.atom

cd $HOME/.atom

for file in $HOME/.dotfiles/atom/*; do
  ok symlink "$(basename $file)" $file
done
unset file

# General
ok apm advanced-open-file
ok apm atom-ternjs
ok apm docblockr
ok apm editorconfig
ok apm file-icons
ok apm sort-lines
ok apm tabs-to-spaces
ok apm vim-mode
ok apm zentabs

# Git integration
ok apm merge-conflicts

# Linters
ok apm linter
ok apm linter-clang
ok apm linter-javac
ok apm linter-js-yaml
ok apm linter-jsonlint
ok apm linter-php
ok apm linter-scalac
ok apm linter-xo

# Formatters
ok apm formatter
ok apm formatter-gofmt

# Languages
ok apm language-cmake
ok apm language-docker
ok apm language-dot
ok apm language-dotenv
ok apm language-gitignore
ok apm language-haskell
ok apm language-latex
ok apm language-protobuf
ok apm language-scala
ok apm language-systemd
ok apm language-terraform
ok apm language-viml

# Autocompletion
ok apm autocomplete-modules
ok apm autocomplete-paths
ok apm autocomplete-php
ok apm autocomplete-snippets
