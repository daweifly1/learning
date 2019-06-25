#!/bin/bash


cat demo2.csv | iconv -c -f GBK -t UTF8 > demo2.pass1
sed 's/,/;/g' demo2.pass1  > demo2.final

echo '' > /tmp/demo.sql
echo 'use demo;' >> /tmp/demo.sql
echo 'load data local inpath '"'/home/hadoop/demo2.final'"' into table userinfo;' >> /tmp/demo.sql
echo 'exit;' >> /tmp/demo.sql
spark-sql --driver-class-path /home/hadoop/spark/lib/mysql-connector-java-5.1.39-bin.jar  --master spark://nn.c:7077 --executor-memory 1g --total-executor-cores 4 < /tmp/demo.sql
