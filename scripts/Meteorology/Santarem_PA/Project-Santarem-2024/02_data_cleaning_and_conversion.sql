-- PROJECT: Climate Analysis - Santarém, PA (Brazil)
-- DATA SOURCE: NOAA GSOD 2024
-- OBJECTIVE: Data Extraction and Cleaning

SELECT DISTINCT
    year, 
    mo AS month, 
    da AS day,
    -- Convert Fahrenheit to Celsius
    ROUND((max - 32) / 1.8, 1) AS max_temperature_c,
    -- Convert Inches to Millimeters
    ROUND(prcp * 25.4, 2) AS precipitation_mm,
    -- DATA TYPE FIX: 
    -- Converting 'wdsp' column from String to Float64 to fix schema error
    -- Converting Knots to km/h
    ROUND(SAFE_CAST(wdsp AS FLOAT64) * 1.852, 1) AS wind_speed_kmh
FROM 
    `bigquery-public-data.noaa_gsod.gsod2024`
WHERE 
    stn = '822440' 
    AND wban = '99999'
    -- Filtering out sensor error values (sentinel values)
    AND max != 9999.9  
    AND prcp != 99.99  
    AND SAFE_CAST(wdsp AS FLOAT64) != 999.9
ORDER BY 
    month, day ASC;
