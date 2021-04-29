======
.files
======

These are my dotfiles. Take anything you want, but at your own risk.

It mainly targets a wsl-based ubuntu system. 


Prerequisites
-------------

The following packages should be installed using brew (mac) or apt (linux) or built from source

- zsh
- fzf (for enhancd)

Installation
------------

Two options

1. Install this repo with ``curl`` available:
 
.. code-block:: bash

    bash -c "`curl -fsSL https://raw.githubusercontent.com/daylinmorgan/dotfiles/main/remote-install.sh`"

This will clone or download, this repo to ``~/.dotfiles`` depending on the availability of ``git``, ``curl`` or ``wget``.

2. Alternatively, clone manually into the desired location:

.. code-block:: bash

    git clone git@github.com:DaylinMorgan/dotfiles.git ~/.dotfiles
    git submodule init
    git submodule update

You need to update the submodules for the enhancd, pure and zsh-syntax-highlighting plugins to work. 

Use the `Makefile <./Makefile>`_ to symlink `runcom <./runcom>`_ and `config <./config>`_

.. code-block:: bash
    
    cd ~/.dotfiles
    make

Submodules
----------

Currently the dotfiles take advantage of git submodules to include 3 git repos. 

    - `Enhancd <https://github.com/b4b4r07/enhancd>`_
    - `Pure <https://github.com/sindresorhus/pure>`_
    - `Zsh-syntax-highlighting <https://github.com/zsh-users/zsh-syntax-highlighting>`_

VS Code Extensions
------------------ 

Installing VS code extensions can be performed by running the scripts found in `vscode <./vscode>`_

To install on windows with ``cmd.exe``

.. code-block:: 

    curl -sO https://raw.githubusercontent.com/DaylinMorgan/dotfiles/main/vscode/install-extensions.bat
    install-extensions.bat
    DEL install-extensions.bat

To install on ubuntu 

.. code-block:: bash

    $DOTFILES_DIR/vscode/install-extensions.sh

To update the list of extensions change ``extensions.yml`` and regenerate the install scripts by running:

.. code-block:: bash

    python $DOTFILES_DIR/vscode/generate_install_scripts.py

Customize
---------

You can put your custom settings, such as Git credentials in the ``system/.custom`` file which will be sourced from
``.zshrc`` automatically. This file is in ``.gitignore``.

Alternatively, you can have an additional, personal dotfiles repo at ``~/.extra``. The runcom ``.zshrc`` sources all
``~/.extra/runcom/*.sh`` files.

Additional Resources
--------------------

- `Awesome Dotfiles <https://github.com/webpro/awesome-dotfiles>`_

Windows Terminal
----------------

Colors for windows terminal configured as described `here <https://github.com/Richienb/windows-terminal-snazzy/blob/master/INSTALL.md>`_

Credits
-------

Many thanks to the `dotfiles community <https://dotfiles.github.io>`_ and Lars Kappert's dotfile `repo <https://github.com/webpro/dotfiles>`_ for inspiration.

TODO
----

- add conda install instructions (fetch from curl?)

  - include default packages with system level benefits 

    - pip 
    - byplot
    - not sure what else...

