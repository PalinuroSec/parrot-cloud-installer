echo "deb http://repository.frozenbox.org/parrot stable main\ndeb http://ftp.it.debian.org/debian wheezy main contrib non-free" > /etc/apt/sources.list
wget http://repository.frozenbox.org/parrot/frozenbox.gpg.key
wget http://repository.frozenbox.org/parrot/kali.gpg.key
cat frozenbox.gpg.key | apt-key add -
cat kali.gpg.key | apt-key add -
#rm frozenbox.gpg.key
rm kali.gpg.key
apt-get update
apt-get -y install apt-parrot --no-install-recommends
echo "deb http://security.kali.org/kali-security kali/updates main contrib non-free" > /etc/apt/sources.list
apt-get update
apt-get -y install parrot-core parrot-cloud parrot-tools-cloud
