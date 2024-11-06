-- Complex method using Packages, macros, dynamic column calls
{% set payment_methods=dbt_utils.get_column_values(source('Data Sources','PAYMENT_MODES'),'MODE') %}
select
UID,
{% for i in payment_methods %}
(case when MODE='{{i}}' then Sales end) as {{i}}_SALES,
{% endfor %}
from {{ source('Data Sources','PAYMENT_MODES') }}

-- Traditional SQL coding
-- select
-- UID,
-- (case when MODE='UPI' then Sales end) as UPI_SALES,
-- (case when MODE='CC' then Sales end) as CC_SALES,
-- (case when MODE='DB' then Sales end) as DB_SALES,
-- (case when MODE='Cheque' then Sales end) as CHEQUE_SALES,
-- (case when MODE='Cash' then Sales end) as CASH_SALES
-- from 
-- {{ source('Data Sources','PAYMENT_MODES') }}


-- Little complex with macros but hardcoding columns
-- {% set payment_methods=['UPI','CC','DB','Cheque','Cash'] %}
-- select
-- UID,
-- {% for i in payment_methods %}
-- (case when MODE='{{i}}' then Sales end) as {{i}}_SALES,
-- {% endfor %}
-- from {{ source('Data Sources','PAYMENT_MODES') }}


