apt-get update
apt-get -y install curl
apt-get install unzip
#apt-get -y install golang


cd /home/vagrant

wget -q http://go.googlecode.com/files/go1.1.2.linux-amd64.tar.gz
tar -zxvf go1.1.2.linux-amd64.tar.gz
rm go1.1.2.linux-amd64.tar.gz
# binary distributions assume they will be installed at /usr/local/go Otherwise, you must set the GOROOT environment variable
sudo mv /home/vagrant/go /usr/local

mkdir -p /vagrant/go/src
mkdir -p /vagrant/go/bin




#appengine dev enviroment download
cd /home/vagrant
wget -q http://googleappengine.googlecode.com/files/go_appengine_sdk_linux_amd64-1.8.8.zip
unzip go_appengine_sdk_linux_amd64-1.8.8.zip
#tar -zxvf

chown -R vagrant:vagrant /home/vagrant/go_appengine
mod -R +xr /home/vagrant/go_appengine


echo "export PATH=$PATH:/usr/local/go/bin:/home/vagrant/go/src:/home/vagrant/go/bin:/home/vagrant/go_appengine" >> /home/vagrant/.bash_profile

source /home/vagrant/.bash_profile
