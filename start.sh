#auto mount nfs linux

sudo apt update && upgrade
sudo apt install -y autofs

echo '/- /etc/auto.nfsdb' | sudo tee -a /etc/auto.master

echo '/mnt/Media -fstype=nfs 192.168.1.79:/mnt/Home/ShareFolder/' | sudo tee -a /etc/auto.nfsdb

sudo /etc/init.d/autofs start 

sudo systemctl enable autofs.service