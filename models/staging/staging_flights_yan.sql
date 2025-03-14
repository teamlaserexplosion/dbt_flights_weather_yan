{{ config(materialized='view') }}

WITH flights_yan AS (
    SELECT * 
    FROM {{source('flights_data', 'flights_yan')}}
)
SELECT * FROM flights_yan