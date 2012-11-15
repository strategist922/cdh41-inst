ROOTDIR="/mnt/data"
mkdir $ROOTDIR
mkdir $ROOTDIR/hadoop-hdfs
mkdir $ROOTDIR/hadoop-hdfs/dn
mkdir $ROOTDIR/hadoop-hdfs/nn
mkdir $ROOTDIR/hadoop-yarn
mkdir $ROOTDIR/hadoop-yarn/apps
mkdir $ROOTDIR/hadoop-yarn/local
mkdir $ROOTDIR/hadoop-yarn/log
chown -R hdfs:hdfs $ROOTDIR/hadoop-hdfs
chmod -R 777 $ROOTDIR/hadoop-hdfs
chown -R yarn:yarn $ROOTDIR/hadoop-yarn
