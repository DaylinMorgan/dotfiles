# .files

These are my dotfiles. Take anything you want, but at your own risk.

It mainly targets a wsl-based ubuntu system. 

## Prequisites
The following packages should be installed using brew (mac) or apt (linux) or built from source
- zsh
- fzf (for enhancd)

## Installation

Two options

1. Install this repo with `curl` available:

```bash
bash -c "`curl -fsSL https://raw.githubusercontent.com/daylinmorgan/dotfiles/main/remote-install.sh`"
```

This will clone or download, this repo to `~/.dotfiles` depending on the availability of `git`, `curl` or `wget`.

1. Alternatively, clone manually into the desired location:

```bash
git clone git@github.com:DaylinMorgan/dotfiles.git ~/.dotfiles
git submodule init
git submodule update
```
You need to update the submodule for the enhancd plugin to work. 

Use the [Makefile](./Makefile) to symlink [runcom](./runcom)
and [config](./config):

```bash
cd ~/.dotfiles
make
```

## Submodules 

Currently the dotfiles take advantage of git submodules to include 3 git repos. 

- [Enhancd](https://github.com/b4b4r07/enhancd)
- [Pure](https://github.com/sindresorhus/pure)
- [Zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

## Customize

You can put your custom settings, such as Git credentials in the `system/.custom` file which will be sourced from
`.zshrc` automatically. This file is in `.gitignore`.

Alternatively, you can have an additional, personal dotfiles repo at `~/.extra`. The runcom `.zshrc` sources all
`~/.extra/runcom/*.sh` files.

## Additional Resources

- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)

## Windows Terminal 

Colors for windows terminal configured as described [here](https://github.com/Richienb/windows-terminal-snazzy/blob/master/INSTALL.md)


## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io) and Lars Kappert's dotfile [repo](https://github.com/webpro/dotfiles) for inspiration.


## TODO
- add conda install instructions (fetch from curl?)
    - add base environment yml
- install all vscode extensions locally, switch all to .bat