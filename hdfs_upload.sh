#!/bin/bash
# File: 3_hdfs_upload.sh
# Purpose: Upload the dataset manually to HDFS (alternative to Sqoop).

# Create HDFS directory for project
hdfs dfs -mkdir /user/cloudera/dataset

# Upload CSV file to HDFS
hdfs dfs -put /home/cloudera/Desktop/vgsales.csv  /user/cloudera/dataset

# Verify upload
hdfs dfs -ls /user/cloudera/dataset