#!/usr/bin/env sh
if test -f shino-syn; then
    echo "installing shino-syn..."
    sudo cp shino-syn /usr/local/bin
    sudo chmod 755 /usr/local/bin/shino-syn
    echo "shino-syn has been installed into /usr/local/bin ."
else
    echo "shino-syn has not found. Please check."
fi