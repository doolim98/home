#!/bin/bash -eu

cd ~
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
mkdir -p ~/.local/bin/
wget https://www.dropbox.com/download?dl=packages/dropbox.py -o ~/.local/bin/dropbox

systemctl --user start dropbox
systemctl --user status dropbox
