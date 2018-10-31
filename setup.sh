#!/bin/bash
# Bootrapping of dev-machine (Awesome Thingamabob) configuration using ANSIBLE.
# Before running ansible the script will install pip and Homebrew.

function uninstall {

echo "WARNING MARCELO!! This will revert your Awesome Thingamabob setup!"
echo -n "Are you sure you want to risk it? [y/n] : "
read confirmation

if [ $confirmation == "y" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
    exit 0
else
  echo "Nothing was changed."
  exit 0
fi

}

if [ $1 == "uninstall" ]; then
    uninstall
fi

echo "================================================="
echo "Starting the configuration of Awesome Thingamabob"
echo "================================================="

sudo easy_install pip
sudo pip install ansible

ansible-playbook -i ./hosts playbook.yml --verbose

# This needs to be executed after ansible playbook, python3 and pip3 are installed with it.
# Makes sure neovim has Python3 support, needed for some plugins like deoplete and UltiSnips.
sudo pip3 install neovim

echo "Awesome Thingamabob ready for dev!"

exit 0
