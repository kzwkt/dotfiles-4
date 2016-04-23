ok directory $HOME/.atom

cd $HOME/.atom

for file in $HOME/.dotfiles/atom/*; do
  ok symlink "$(basename $file)" $file
done
unset file

# Master of ceremonies
ok apm package-sync

# General
ok apm advanced-open-file
ok apm atom-ternjs
ok apm docblockr
ok apm editorconfig
ok apm file-icons
ok apm pigments
ok apm sort-lines
ok apm tabs-to-spaces
ok apm vim-mode
ok apm zentabs

# Git integration
ok apm merge-conflicts

# Linters
ok apm linter
ok apm linter-coffeelint
ok apm linter-cpplint
ok apm linter-javac
ok apm linter-js-yaml
ok apm linter-jsonlint
ok apm linter-php
ok apm linter-puppet
ok apm linter-xmllint
ok apm linter-xo

# Languages
ok apm language-docker
ok apm language-dotenv
ok apm language-eco
ok apm language-ejs
ok apm language-fish-shell
ok apm language-gitignore
ok apm language-handlebars
ok apm language-latex
ok apm language-puppet
ok apm language-smarty
ok apm language-viml

# Autocompletion
ok apm autocomplete-modules
ok apm autocomplete-paths
ok apm autocomplete-php
ok apm autocomplete-snippets

# Minimap
ok apm minimap
ok apm minimap-find-and-replace
ok apm minimap-git-diff

# Ionide
ok apm ionide-fsharp
ok apm ionide-fsi
