sudo -u hdfs hadoop fs -mkdir /tmp
sudo -u hdfs hadoop fs -chmod -R 1777 /tmp
sudo -u hdfs hadoop fs -mkdir /tmp/hadoop-yarn
sudo -u hdfs hadoop fs -mkdir /tmp/hadoop-yarn/staging
sudo -u hdfs hadoop fs -mkdir /tmp/hadoop-yarn/staging/history
sudo -u hdfs hadoop fs -chmod 1777 /tmp
sudo -u hdfs hadoop fs -chown yarn /tmp/hadoop-yarn
sudo -u hdfs hadoop fs -mkdir /user
sudo -u hdfs hadoop fs -mkdir /user/history
sudo -u hdfs hadoop fs -chmod 777 /user/history
sudo -u hdfs hadoop fs -mkdir /user/huser
sudo -u hdfs hadoop fs -chown -R huser /user/huser
sudo -u hdfs hadoop fs -mkdir /user/hive
sudo -u hdfs hadoop fs -mkdir /user/hive/warehouse
sudo -u hdfs hadoop fs -chown -R hive /user/hive
sudo -u hdfs hadoop fs -chmod 777 /user/hive/warehouse



