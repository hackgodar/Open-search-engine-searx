#!/bin/bash
cat << "EOF"
 
 _   _   ____       _                   _ 
| | | | / __ \  ___| | ____ _  ___   __| |
| |_| |/ / _` |/ __| |/ / _` |/ _ \ / _` |
|  _  | | (_| | (__|   < (_| | (_) | (_| |
|_| |_|\ \__,_|\___|_|\_\__, |\___/ \__,_|
        \____/          |___/             
-AR script                                                      Installer
   Subscribe to hackgod for more hacking tutorials
https://www.youtube.com/channel/UC06Ha7efuD_H97kOHhJWpvQ?sub_confirmation=1
                                                         

EOF

echo "###################################"
echo "Installing requirements packages..."
echo "###################################"
sudo apt-get install git build-essential libxslt-dev python-dev python-virtualenv python-babel zlib1g-dev libffi-dev libssl-dev

echo "###################################"
echo "Installing SearX on Kali Linux  ..."
echo "###################################"

cd /usr/local
sudo git clone https://github.com/asciimoo/searx.git
sudo useradd searx -d /usr/local/searx
sudo chown searx:searx -R /usr/local/searx
cd /usr/local/searx
virtualenv searx-ve
. ./searx-ve/bin/activate
./manage.sh update_packages
sed -i -e "s/ultrasecretkey/`openssl rand -hex 16`/g" searx/settings.yml

echo "###################################"
echo "Running Your Private SearX      ..."
echo "###################################"

clear

cat << "EOF"

 _   _   ____       _                   _ 
| | | | / __ \  ___| | ____ _  ___   __| |
| |_| |/ / _` |/ __| |/ / _` |/ _ \ / _` |
|  _  | | (_| | (__|   < (_| | (_) | (_| |
|_| |_|\ \__,_|\___|_|\_\__, |\___/ \__,_|
        \____/          |___/             
-AR script                                                          Running...
   Subscribe to hackgod for more hacking tutorials
https://www.youtube.com/channel/UC06Ha7efuD_H97kOHhJWpvQ?sub_confirmation=1                                                      

EOF

echo " Go to http://localhost:8888"

python searx/webapp.py


