echo 'export PATH="$PATH:/workspaces/worklyfe/worklyfe_app/flutter/bin"' >> ~/.bashrc
sudo apt-get install libvlccore-dev
sudo apt-get install libvlc-dev
sudo apt-get install libgtk-3-dev
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' 
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo apt update 
sudo apt install google-chrome-stable 
sudo apt-get install xvfb
apt install ninja-build
apt install libgtk-3-dev