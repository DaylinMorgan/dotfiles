#!/bin/bash

# VS Code Extensions install script 
# 
# Author: Daylin Morgan
# 
# DO NOT EDIT MANUALLY!
# Regenerate with generate_install_scripts.py


echo "Installing VS Code Extensions"

# general extensions
# ------------------
code --install-extension ms-vscode-remote.remote-ssh --force
code --install-extension ms-vscode-remote.remote-ssh-edit --force
code --install-extension ms-vscode-remote.remote-wsl --force
code --install-extension Shan.code-settings-sync --force
code --install-extension janisdd.vscode-edit-csv --force

# web-dev extensions
# ------------------
code --install-extension bradlc.vscode-tailwindcss --force
code --install-extension ritwickdey.liveserver --force

# styling extensions
# ------------------
code --install-extension johnpapa.vscode-peacock --force
code --install-extension PKief.material-icon-theme --force
code --install-extension Thomaz.preparing --force
code --install-extension whizkydee.material-palenight-theme --force

# code-help extensions
# --------------------
code --install-extension aaron-bond.better-comments --force
code --install-extension CoenraadS.bracket-pair-colorizer-2 --force
code --install-extension streetsidesoftware.code-spell-checker --force
code --install-extension vsls-contrib.gistfs --force
code --install-extension mhutchie.git-graph --force
code --install-extension TabNine.tabnine-vscode --force

# python extensions
# -----------------
code --install-extension ms-python.python --force
code --install-extension ms-toolsai.jupyter --force
code --install-extension njpwerner.autodocstring --force

# language-support extensions
# ---------------------------
code --install-extension yzhang.markdown-all-in-one --force
code --install-extension lextudio.restructuredtext --force
code --install-extension Ikuyadeu.r --force
code --install-extension James-Yu.latex-workshop --force
code --install-extension budparr.language-hugo-vscode --force
code --install-extension tht13.rst-vscode --force

echo "Extension installation compeleted!"