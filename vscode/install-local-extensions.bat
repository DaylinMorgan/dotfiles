ECHO off

:: Batch script to install common local extensions

ECHO Installing VS Code Extensions...


:: General Extensions
call code --install-extension ms-vscode-remote.remote-ssh --force
call code --install-extension ms-vscode-remote.remote-ssh-edit --force
call code --install-extension ms-vscode-remote.remote-wsl --force
call code --install-extension Shan.code-settings-sync --force
call code --install-extension ritwickdey.liveserver --force

:: App Styling
call code --install-extension johnpapa.vscode-peacock --force
call code --install-extension PKief.material-icon-theme --force
call code --install-extension Thomaz.preparing --force

:: Code Help
call code --install-extension aaron-bond.better-comments --force
call code --install-extension CoenraadS.bracket-pair-colorizer-2 --force
call code --install-extension streetsidesoftware.code-spell-checker --force
call code --install-extension vsls-contrib.gistfs --force