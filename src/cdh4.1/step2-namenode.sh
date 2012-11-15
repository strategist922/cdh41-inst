apt-get install hadoop-yarn-resourcemanager hadoop-hdfs-namenode hadoop-hdfs-secondarynamenode hadoop-mapreduce-historyserver hadoop-yarn-proxyserver 
update-rc.d hadoop-hdfs-namenode remove
update-rc.d hadoop-yarn-resourcemanager remove
update-rc.d hadoop-yarn-proxyserver remove
update-rc.d hadoop-hdfs-secondarynamenode remove
update-rc.d hadoop-mapreduce-historyserver remove

echo "make sure the network is configured correctly with hostnames and ips of the cluster"
echo "in visudo"
echo "Cmnd_Alias	NAMENODE = /etc/init.d/hadoop-hdfs-namenode"
echo "Cmnd_Alias	SECOND = /etc/init.d/hadoop-hdfs-secondarynamenode"
echo "Cmnd_Alias	YARN = /etc/init.d/hadoop-yarn-resourcemanager"
echo "Cmnd_Alias	PROXY = /etc/init.d/hadoop-yarn-proxyserver"
echo "Cmnd_Alias	HIST = /etc/init.d/hadoop-mapreduce-historyserver"
echo "Cmnd_Alias	HALT = /sbin/halt"
echo "huser ALL = (ALL) NOPASSWD:NAMENODE, YARN, SECOND, PROXY, HIST, HALT"
