SELECT 
    usaf, -- Código da estação
    wban, 
    name, -- Nome da localidade
    country, 
    state, 
    lat, 
    lon
FROM 
    bigquery-public-data.noaa_gsod.stations
WHERE 
    state = 'PA' AND country = 'BR'
ORDER BY 
    name ASC
