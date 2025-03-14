WITH airports_regions_join AS (
    SELECT * 
    FROM {{source('flights_data', 'airports_yan')}}
    LEFT JOIN {{source('flights_data', 'regions_yan')}}
    USING (country)
)
SELECT * FROM airports_regions_join