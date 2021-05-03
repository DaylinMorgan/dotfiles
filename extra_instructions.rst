========================
Extra Setup Instructions
========================

Below are some quality of life setups that are beyond the minimum and require additional onboarding but offer many benefits. 

Additional Tools
----------------

LSD (LS Deluxe)
+++++++++++++++

`LS deluxe <https://github.com/Peltoche/lsd/>`_ is a rust based alternative to the typical unix command ``ls``.
As such it has some additional features some which are inspired by the ``colorls`` project. 

Prerequisites
*************
In order to properly utilize LS deluxe it is important to install and enable fonts with sufficient glyphs. 

This can be accomplished by installing your font of choice from the `Nerd Fonts Project <https://github.com/Peltoche/lsd/>`_. Enabling this font will depend on your terminal emulator for Hyper.js see below. 

Installation
************

LS Deluxe can be installed on an ubuntu system using the below commands. 

.. code-block:: bash

    wget https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb
    sudo dpkg -i lsd_0.20.1_amd64.deb

The following can be added to ``system/.custom`` to make LSD the default along with additional lsd related aliases

.. code-block:: bash

    alias ls="lsd"
    alias lt='lsd --tree'
    alias lr='lsd -R'

A config file for ``lsd`` can be found in ``config/lsd/``. It should be automatically linked to the config directory in your home directory when running ``install.sh``.
Hyper Terminal 
++++++++++++++

`Hyper <https://hyper.is>`_ is a cross-platform electron-based terminal emulator that I have been using of late. 

It has a fairly good extension ecosystem and consistent behavior. Since RAM is not usually an issue on my current local machine I find no performance drawbacks from yet another electron app. It can be installed directly from their website. 

In may case the primary use is to interact with WSL through Hyper. This means hyper should be installed on then windows side. 
The exact configuration can be copied from the ``hyper/.hyper.js``. Although due to the nonsensical file save location of preferences for applications in windows it's typically easier to go to ``File > Preferences`` within the app and copy and paste the configuration. 

The essential component necessary to change is the shell.

.. code-block:: javascript

    ...
    shell: 'C:\\Windows\\System32\\wsl.exe',
    shellArgs: ['--'],
    ...

In order to change the font used by hyper it should installed in windows and set using the ``fontFamily`` parameter in ``.hyper.js``. Importantly ensure that the list of fonts remains enclosed by single quotes. 

Hyper Extensions
****************

Currently I make use of the following extensions which should be installed automatically if included from the config file.

- `Hyper-snazzy <https://github.com/sindresorhus/hyper-snazzy>`_
- `Hyper-window-size <https://github.com/romainlq/hyper-window-size>`_