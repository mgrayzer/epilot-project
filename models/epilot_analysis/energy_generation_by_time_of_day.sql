with base AS (
    SELECT 
    *
    FROM 
     {{ref('cleaned_raw_data')}}
),

final AS (
SELECT 
TO_TIMESTAMP(SUBSTRING(timestamp_energy_generation, 0, 16), 'YYYY-MM-DD HH:MI') AS time_energy_generation,
timestamp_energy_generation::date AS date_energy_generation,
country_code,
plant_type_compacted,
SUM(energy_generation_mw) AS energy_generation_mw
FROM 
base
GROUP BY ALL 
)
SELECT * FROM final