apt-get update
apt-get dist-upgrade
echo "deb http://frozenbox.mirror.garr.it/mirrors/parrot stable main" > /etc/apt/sources.list.d/parrot.list
echo "deb http://frozenbox.mirror.garr.it/mirrors/debian stable main contrib non-free\ndeb-src http://frozenbox.mirror.garr.it/mirrors/debian stable main contrib non-free\n\ndeb http://frozenbox.mirror.garr.it/mirrors/debian stable-updates main contrib non-free\ndeb-src http://frozenbox.mirror.garr.it/mirrors/debian stable-updates main contrib non-free" > /etc/apt/sources.list.d/debian.list
echo "deb http://frozenbox.mirror.garr.it/mirrors/kali kali-only main contrib non-free\ndeb http://frozenbox.mirror.garr.it/mirrors/kali-security kali/updates main contrib non-free" > /etc/apt/sources.list.d/kali.list
echo "deb http://repo.mate-desktop.org/debian wheezy main" > /etc/apt/sources.list.d/mate.list

wget -qO - http://repository.frozenbox.org/parrot/frozenbox.gpg.key | apt-key add -
wget -qO - http://repository.frozenbox.org/parrot/kali.gpg.key | apt-key add -
wget -qO - http://repo.mate-desktop.org/debian/mate-archive-keyring.gpg | apt-key add -
apt-get update
apt-get -y install apt-parrot --no-install-recommends
apt-get update
apt-get -y install parrot-core parrot-cloud parrot-tools-cloud
apt-get dist-upgrade
