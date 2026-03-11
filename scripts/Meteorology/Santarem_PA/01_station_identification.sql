-- PROJECT: Climate Analysis of Santarém-PA
-- STEP 01: Station Identification and Mapping
-- OBJECTIVE: Locate the unique identifiers (USAF/WBAN) for the Santarém station.

SELECT 
    usaf, -- Unique station identifier (Air Force)
    wban, -- Weather Bureau Army Navy identifier
    name AS station_name, -- Location name
    country AS country_code,   
    lat AS latitude, 
    lon AS longitude
FROM 
    `bigquery-public-data.noaa_gsod.stations`
WHERE 
    country = 'BR' 
    AND name = 'SANTAREM'
ORDER BY 
    station_name ASC;
