useradd -d /home/huser -g users -G hadoop -s /bin/zsh huser
cp conf/* /etc/hadoop/conf/
chown root:root /etc/hadoop/conf/*
mkdir /home/huser
cp hadoop-zshrc /home/huser/.zshrc
chown -R huser.hadoop /home/huser
passwd huser
echo "su - huser"
echo "ssh-keygen"
