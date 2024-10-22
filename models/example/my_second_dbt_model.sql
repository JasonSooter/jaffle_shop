-- Use the `ref` function to select from other models
{{ config(
  materialized = 'ephemeral'
) }}

SELECT
  *
FROM
  {{ ref('my_first_dbt_model') }}
WHERE
  id = 1
  OR id = 2
