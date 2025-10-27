-- Hive Script: Import vgsales.csv into Hive

-- Step 1: Create a Hive table
CREATE  TABLE vgsales (
  Rank INT,
  Name STRING,
  Platform STRING,
  Year INT,
  Genre STRING,
  Publisher STRING,
  NA_Sales FLOAT,
  EU_Sales FLOAT,
  JP_Sales FLOAT,
  Other_Sales FLOAT,
  Global_Sales FLOAT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE


-- Step 2: Load CSV data into Hive table
LOAD DATA INPATH ‘/user/cloudera/dataset/vgsales.csv’ OVERWRITE INTO TABLE vgsales

-- Step 3: Verify load
SELECT * FROM vgsales LIMIT 10;
