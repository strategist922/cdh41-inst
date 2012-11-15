apt-get install hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce hadoop-client
update-rc.d hadoop-yarn-nodemanager remove
update-rc.d hadoop-hdfs-datanode remove
echo "in visudo add the following"
echo "Cmnd_Alias YARN = /etc/init.d/hadoop-yarn-nodemanager"
echo "Cmnd_Alias HDFS = /etc/init.d/hadoop-hdfs-datanode"
echo "Cmnd_Alias HALT = /sbin/halt"
echo "huser ALL=(ALL) NOPASSWD: YARN, HDFS, HALT"
