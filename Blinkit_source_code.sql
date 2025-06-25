CREATE DATABASE blinkitdb;

--checking the blinkit_data table data is imported or not
SELECT * FROM blinkit_data;

--how much record present in the blinkit_data table
select count(*) as no_of_records from blinkit_data;

--Data Cleaning
-- correcting where the data is mismatched

UPDATE blinkit_data
SET Item_Fat_Content = 
CASE 
WHEN Item_Fat_Content in ('LF','low fat') THEN 'Low Fat'
WHEN Item_Fat_Content ='reg' THEN 'Regular'
ELSE Item_Fat_Content
END

--checking
SELECT DISTINCT(Item_Fat_Content) FROM blinkit_data;