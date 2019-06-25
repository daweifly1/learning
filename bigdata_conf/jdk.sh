#!/bin/bash
export JAVA_HOME=/jdk
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$CLASSPATH:$JAVA_HOME/lib:$JRE_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

export HADOOP_HOME=/home/hadoop/hadoop
export HADOOP_BIN=$HADOOP_HOME/bin
export HADOOP_SBIN=$HADOOP_HOME/sbin
export PATH=$PATH:$HADOOP_BIN:$HADOOP_SBIN

export HIVE_HOME=/home/hadoop/hive
export PATH=$PATH:$HIVE_HOME/bin

export PATH=$PATH:/home/hadoop/hbase/bin

export SPARK_HOME=/home/spark
export SCALA_HOME=/usr/share/java
export CLASSPATH=$SPARK_HOME/lib:$SCALA_HOME:$CLASSPATH
