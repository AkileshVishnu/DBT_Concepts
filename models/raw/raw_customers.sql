{{
    config
    (database='AgentOPS_Golden_Layer_DB',
    schema='RAW')
}}

select * from {{source("raw_tables","raw_payments")}}