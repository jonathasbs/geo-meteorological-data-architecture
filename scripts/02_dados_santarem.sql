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
    stn = '822770' -- Coloque aqui o seu USAF
    AND wban = '99999' -- Coloque aqui o seu WBAN
ORDER BY 
    mo, da ASC
