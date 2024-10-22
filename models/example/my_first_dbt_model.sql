{{ config(
  materialized = 'ephemeral'
) }}

WITH source_data AS (

  SELECT
    1 AS id,
    'Jason' AS first_name,
    'Sooter' AS last_name
  UNION ALL
  SELECT
    2 AS id,
    'Someone' AS first_name,
    'Else' AS last_name
)
SELECT
  *
FROM
  source_data
