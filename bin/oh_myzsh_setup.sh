#! /usr/bin/env bash 

SHELLS="$(cat "/etc/shells")"
if [[ "$SHELLS" =~ zsh ]]; then
    chsh -s "$(which zsh)"      
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cp ".zshrc" "~/.zshrc"
else 
    echo "zsh doesn't seem to be installed, check your installation"
fi
