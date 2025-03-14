WITH airports_reorder AS (
SELECT faa
        ,name
        ,city
        ,country
        ,region
        ,lat
        ,lon
        ,alt
        ,tz
        ,dst
FROM {{ref('staging_airports_yan')}}
)
SELECT * FROM airports_reorder