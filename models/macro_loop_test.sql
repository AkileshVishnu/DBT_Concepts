{% set payment_modes = dbt_utils.get_column_values(source("Data Sources", 'PAYMENT_MODES'), 'MODE') %}
SELECT
MODE,
{% for i in payment_modes %}
    SUM(CASE WHEN MODE='{{ i }}' THEN SALES END) AS {{ i }}_sales
    {%- if not loop.last %}, {% endif %} 
{% endfor %}
FROM {{ source("Data Sources", 'PAYMENT_MODES') }}
group by MODE

{# if not loop.last % This is to avoid the ',' that comes in the last line of the select statement when we run on loop #}