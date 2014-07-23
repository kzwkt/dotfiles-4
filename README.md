## Kasper does dotfiles

[Bork](https://github.com/mattly/bork)-based configuration scripts for setting up my personal UNIX boxes.

> __OBS:__ Please don't clone my dotfiles. You'll be much better off writing and curating your own set of configs. 

### Available commands

```sh
$ ./dotfiles status [<file>]
# Check the status of the assertions in a config script.
# If no file is provided, all assertions will be checked.

$ ./dotfiles satisfy [<file>]
# Run the assertions of a config script.
# If no file is provided, all assertions will be run.
```

---
Copyright &copy; 2014 [Kasper Kronborg Isager](https://github.com/kasperisager). Licensed under the terms of the [MIT License](LICENSE.md).
