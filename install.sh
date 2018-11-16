#!/bin/bash -e

#sudo apt-get clean
#sudo mv /var/lib/apt/lists/* /tmp
#sudo mkdir -p /var/lib/apt/lists/partial
#sudo apt-get clean
#sudo apt-get update

#echo '===== Installing libgmp3-dev package ====='
#sudo apt-get install libgmp3-dev
sudo yum update

echo "================= Updating global rvm packages ==================="
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
echo '[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh' >> /etc/drydock/.env
[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh

cd /c7ruball
mv .gemrc $HOME/.gemrc

for file in /c7ruball/version/*;
do
  $file
done

#echo "================= Cleaning package lists ==================="
#apt-get clean
#apt-get autoclean
#apt-get autoremove
