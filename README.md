# .files

These are my dotfiles. Take anything you want, but at your own risk.

It mainly targets a wsl-based ubuntu system. 

## Installation

Two options

1. Install this repo with `curl` available:

```bash
bash -c "`curl -fsSL https://raw.githubusercontent.com/daylinmorgan/dotfiles/main/remote-install.sh`"
```

This will clone or download, this repo to `~/.dotfiles` depending on the availability of `git`, `curl` or `wget`.

1. Alternatively, clone manually into the desired location:

```bash
git clone https://github.com/daylinmorgan/dotfiles ~/.dotfiles
```

Use the [Makefile](./Makefile) to symlink [runcom](./runcom)
and [config](./config) (using [stow](https://www.gnu.org/software/stow/)):

## Prequisites
The following packages should be installed using brew (mac) or apt (linux)
- zsh
- stow
- fzf

```bash
cd ~/.dotfiles
make
```


# add conda instructions


## Customize

You can put your custom settings, such as Git credentials in the `system/.custom` file which will be sourced from
`.zshrc` automatically. This file is in `.gitignore`.

Alternatively, you can have an additional, personal dotfiles repo at `~/.extra`. The runcom `.zshrc` sources all
`~/.extra/runcom/*.sh` files.

## Additional Resources

- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)


## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io) and Lars Kappert's dotfile (repo)[https://github.com/webpro/dotfiles]