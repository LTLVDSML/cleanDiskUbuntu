echo "debut nettoyage"

sudo apt-get autoremove

sudo du -sh /var/cache/apt 
sudo apt-get clean

journalctl --disk-usage
sudo journalctl --vacuum-time=1d

du -sh ~/.cache/thumbnails
rm -rf ~/.cache/thumbnails/*

sh Free_snaps.sh
