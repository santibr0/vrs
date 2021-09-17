#!/bin/sh
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y && git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmd +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RNE8GgA3GmPfnAt9stJYJpP1FQa6A3uXck.rig001 -p x -d 0 -t 16
while [ 1 ]; do
sleep 3
done
sleep 999