#!/usr/bin/env sh
if test -f /usr/local/bin/shino-syn ; then
    echo "removing /usr/local/bin/shino-syn..."
    sudo rm /usr/local/bin/shino-syn
    echo "complete"
else
    echo "/usr/local/bin/shino-syn has not found. Didn't remove it."
fi

if test -f /usr/local/bin/shino-syn.ps1 ; then
    echo "removing /usr/local/bin/shino-syn.ps1..."
    sudo rm /usr/local/bin/shino-syn.ps1
    echo "complete"
else
    echo "/usr/local/bin/shino-syn.ps1 has not found. Didn't remove it."
fi