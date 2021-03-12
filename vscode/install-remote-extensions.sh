#!/bin/bash

# Shell script to install my most common remote extensions

echo "Installing Remote VS Code Extensions For $(hostname -a)"
# General Extensions
code --install-extension janisdd.vscode-edit-csv --force
code --install-extension mhutchie.git-graph --force
code --install-extension ritwickdey.LiveServer --force
code --install-extension streetsidesoftware.code-spell-checker --force
code --install-extension cssho.vscode-svgviewer --force
code --install-extension TabNine.tabnine-vscode --force

# Python Extensions
code --install-extension ms-python.python --force
code --install-extension ms-toolsai.jupyter --force


