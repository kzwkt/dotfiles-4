ok directory $HOME/.zsh
ok directory $HOME/.zsh/antibody

wget -O /tmp/antibody.tar.gz \
  "http://antibody.elasticbeanstalk.com/latest/$(uname -s)/$(uname -m)"
tar xvzf /tmp/antibody.tar.gz -C $HOME/.zsh/antibody
