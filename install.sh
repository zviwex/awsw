#!/bin/bash

echo '[+] Installing aws2-wrap'
python3 -m pip install aws2-wrap

echo '[+] Installing awsw'
mkdir -p ~/.awsw

cp ./awsw.sh ~/.awsw/

if test -f ~/.bashrc; then
    echo '[+] Adding awsw to zsh'
    cat add_to_rc.sh >> ~/.bashrc
fi

if test -f ~/.zshrc; then
    echo '[+] Adding awsw to zsh'
    cat add_to_rc.zsh >> ~/.zshrc
fi

if test -f ~/.config/fish/config.fish; then
    echo '[+] Adding awsw to fish'
    cat add_to_rc.fish >> ~/.config/fish/config.fish
fi
