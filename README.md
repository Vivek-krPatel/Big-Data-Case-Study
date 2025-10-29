# Big Data Case Study Video Game Sales using Hadoop Ecosystem

## Overview
This project demonstrates a full Big Data pipeline using Hadoop, Hive, Jupyter notebook, pandas, matplotlib, seaborn to analyze and visualize video game sales data.

## Tools Used
- Hadoop HDFS
- Hive
- Python (Pandas, Matplotlib, Seaborn)

## Workflow
1. Import CSV into local filesystem.
2. Transfer data to HDFS.
3. Query data in Hive.
4. Visualize insights using Python.

## File Descriptions
 File  Description 
--------------------
 `hdfs_upload.sh`  Upload of dataset to HDFS 
 `Hive_table_schema.hql` Schema for vgsales table in hive
 `hive_analysis.hql`  HiveQL script for queries 
 `Big data case study (Visualizations code).ipynb`  jupyter Notebook visualization code 
 `vgsales.csv` Video Games Sales Dataset
 `README.md`  Documentation and workflow overview 

## How to Run
```bash
bash hdfs_upload.sh
hive Hive_table_schema.hql
hive -f hive_analysis.hql
jupyter notebook "Big data case study (Visualizations code).ipynb"
