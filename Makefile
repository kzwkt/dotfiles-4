BREW_URL := https://raw.githubusercontent.com/homebrew/install/master/install

dotfiles = $(subst home/, ~/, $(shell git ls-files home))

/usr/local/bin/brew:
	curl -fsSL ${BREW_URL} | ruby

~/.terminfo: term.terminfo
	tic -o $@ $<

~/.%: home/.%
	@mkdir -p $(dir $@)
	ln -sfn ${PWD}/$< $@

~: /usr/local/bin/brew ~/.terminfo ${dotfiles}
