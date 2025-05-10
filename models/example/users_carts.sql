
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT
  u.id
  , u.username
  , u.name__firstname
  , u.name__lastname
  , c.id
  , c.date
FROM `sandbox-data-pipeline.fakestore_data.users` u
JOIN `sandbox-data-pipeline.fakestore_data.carts` c
ON u.id = c.user_id

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
