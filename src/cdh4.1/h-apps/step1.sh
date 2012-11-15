echo "#non-free repo" >> /etc/apt/sources.list
echo "deb http://ftp.us.debian.org/debian/ squeeze main non-free" >> /etc/apt/sources.list
apt-get update
apt-get install sun-java6-jdk sun-java6-jre ssh zsh vim rsync curl sudo
echo "#cdh4 repos" >> /etc/apt/sources.list
echo "deb http://archive.cloudera.com/cdh4/debian/squeeze/amd64/cdh squeeze-cdh4 contrib" >> /etc/apt/sources.list
echo "deb-src http://archive.cloudera.com/cdh4/debian/squeeze/amd64/cdh squeeze-cdh4 contrib" >> /etc/apt/sources.list
curl -s http://archive.cloudera.com/cdh4/debian/squeeze/amd64/cdh/archive.key | apt-key add -
apt-get update
cp ./root-zshrc /root/.zshrc
echo "chage root default shell to zsh in /etc/passwd"
