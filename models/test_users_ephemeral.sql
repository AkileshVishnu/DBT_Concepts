{{
    config(
        materialized='ephemeral'
    )
}}

select * from {{source("Data Sources","USERS")}}