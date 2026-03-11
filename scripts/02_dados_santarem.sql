SELECT 
    year, 
    mo, 
    da, 
    temp, -- Temperatura em Fahrenheit
    max,  -- Máxima
    prcp  -- Chuva
FROM 
    bigquery-public-data.noaa_gsod.gsod2024
WHERE 
    stn = '822770' 
    AND wban = '99999'
ORDER BY 
    mo, da ASC
