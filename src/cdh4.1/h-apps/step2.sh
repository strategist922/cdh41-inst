apt-get install pig hive hive-server
update-rc.d hive-server remove
useradd -d /home/huser -g users -G hadoop -s /bin/zsh huser
cp conf/* /etc/hadoop/conf/
cp hive-conf/* /etc/hive/conf/
cp /etc/pig-conf/* /etc/pig/conf/
chown root:root /etc/hadoop/conf/*
mkdir /home/huser
cp hadoop-zshrc /home/huser/.zshrc
chown -R huser.hadoop /home/huser
passwd huser
echo "su - huser"
echo "ssh-keygen"
