SELECT 
    usaf, -- Código da estação
    wban, 
    name, -- Nome da localidade
    country,   
    lat, 
    lon
FROM 
    bigquery-public-data.noaa_gsod.stations
WHERE 
    country = 'BR' AND name = 'SANTAREM'
ORDER BY 
    name ASC
