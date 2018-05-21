#! /usr/bin/env bash

set -e

sudo apt-get install lib32stdc++6

if type aa-complain &> /dev/null
then
    # Disable AppArmor for cupsd.
    sudo aa-complain cupsd
fi

sudo mkdir --parents /usr/lib/cups
sudo mkdir --parents /usr/lib/cups/filter
sudo mkdir --parents /usr/share/cups/model

wget 'http://download.brother.com/welcome/dlf101912/hll2340dlpr-3.2.0-1.i386.deb'

sudo dpkg --install --force-all 'hll2340dlpr-3.2.0-1.i386.deb'

wget 'http://download.brother.com/welcome/dlf101913/hll2340dcupswrapper-3.2.0-1.i386.deb'

sudo dpkg --install --force-all 'hll2340dcupswrapper-3.2.0-1.i386.deb'
