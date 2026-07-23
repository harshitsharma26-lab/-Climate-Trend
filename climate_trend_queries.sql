create database climate_db;

use climate_db;

SELECT * FROM climate_data;

SELECT COUNT(*) AS Total_Records
FROM climate_data;

DESCRIBE climate_data;

SELECT COUNT(DISTINCT region) AS Total_Regions
FROM climate_data;

SELECT DISTINCT region
FROM climate_data;

SELECT ROUND(AVG(avg_temperature_c),2) AS Average_Temperature
FROM climate_data;

SELECT ROUND(AVG(co2_ppm),2) AS Average_CO2
FROM climate_data;

SELECT ROUND(AVG(precipitation_mm),2) AS Average_Rainfall
FROM climate_data;

SELECT ROUND(AVG(humidity_percent),2) AS Average_Humidity
FROM climate_data;

SELECT ROUND(AVG(temperature_anomaly_c),2) AS Average_Anomaly
FROM climate_data;

SELECT MAX(avg_temperature_c) AS Highest_Temperature
FROM climate_data;

SELECT MIN(avg_temperature_c) AS Lowest_Temperature
FROM climate_data;

SELECT MAX(co2_ppm) AS Highest_CO2
FROM climate_data;

SELECT MAX(precipitation_mm) AS Highest_Rainfall
FROM climate_data;

SELECT MAX(humidity_percent) AS Highest_Humidity
FROM climate_data;

SELECT
region,
ROUND(AVG(avg_temperature_c),2) AS Avg_Temperature
FROM climate_data
GROUP BY region
ORDER BY Avg_Temperature DESC;

SELECT
region,
ROUND(AVG(co2_ppm),2) AS Avg_CO2
FROM climate_data
GROUP BY region
ORDER BY Avg_CO2 DESC;

SELECT
region,
ROUND(AVG(precipitation_mm),2) AS Avg_Rainfall
FROM climate_data
GROUP BY region
ORDER BY Avg_Rainfall DESC;

SELECT
region,
ROUND(AVG(humidity_percent),2) AS Avg_Humidity
FROM climate_data
GROUP BY region
ORDER BY Avg_Humidity DESC;

SELECT
region,
ROUND(AVG(temperature_anomaly_c),2) AS Avg_Anomaly
FROM climate_data
GROUP BY region
ORDER BY Avg_Anomaly DESC;

SELECT
date,
region,
avg_temperature_c
FROM climate_data
ORDER BY avg_temperature_c DESC
LIMIT 10;

SELECT
date,
region,
co2_ppm
FROM climate_data
ORDER BY co2_ppm DESC
LIMIT 10;

SELECT
date,
region,
precipitation_mm
FROM climate_data
ORDER BY precipitation_mm DESC
LIMIT 10;

SELECT
date,
region,
humidity_percent
FROM climate_data
ORDER BY humidity_percent DESC
LIMIT 10;

SELECT
MONTH(date) AS Month,
ROUND(AVG(avg_temperature_c),2) AS Avg_Temperature
FROM climate_data
GROUP BY Month
ORDER BY Month;

SELECT
MONTH(date) AS Month,
ROUND(AVG(co2_ppm),2) AS Avg_CO2
FROM climate_data
GROUP BY Month
ORDER BY Month;

SELECT
MONTH(date) AS Month,
ROUND(AVG(precipitation_mm),2) AS Avg_Rainfall
FROM climate_data
GROUP BY Month
ORDER BY Month;

SELECT
MONTH(date) AS Month,
ROUND(AVG(humidity_percent),2) AS Avg_Humidity
FROM climate_data
GROUP BY Month
ORDER BY Month;

SELECT
YEAR(date) AS Year,
ROUND(AVG(avg_temperature_c),2) AS Avg_Temperature
FROM climate_data
GROUP BY Year
ORDER BY Year;

SELECT
YEAR(date) AS Year,
ROUND(AVG(co2_ppm),2) AS Avg_CO2
FROM climate_data
GROUP BY Year
ORDER BY Year;

SELECT
region,
ROUND(AVG(avg_temperature_c),2) AS Avg_Temperature,
ROUND(AVG(co2_ppm),2) AS Avg_CO2,
ROUND(AVG(precipitation_mm),2) AS Avg_Rainfall,
ROUND(AVG(humidity_percent),2) AS Avg_Humidity,
ROUND(AVG(temperature_anomaly_c),2) AS Avg_Anomaly
FROM climate_data
GROUP BY region
ORDER BY Avg_Temperature DESC;