{{config(
    materialized = 'incremental'
)}}

SELECT * FROM {{source("Data Sources",'Orders')}} t1

{% if is_incremental() %}
WHERE
t1.date > (SELECT MAX(DATE) from {{this}})
{% endif %}