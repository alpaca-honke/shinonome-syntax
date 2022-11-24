#!/usr/bin/env sh
if test -f shino-syn.ps1; then
    echo "installing shino-syn.ps1..."
    sudo cp shino-syn.ps1 /usr/local/bin
    sudo chmod 755 /usr/local/bin/shino-syn.ps1
    echo "shino-syn.ps1 has been installed into /usr/local/bin ."
else
    echo "shino-syn.ps1 has not found. Please check."
fi