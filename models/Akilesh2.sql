{{
    config(
        tag=['daily'],
        materialized='view'
    )
}}

select * from DB_AGENTOPS.SC_ECOMM.USERS
union all
select * from DB_AGENTOPS.SC_ECOMM.USERS
union all
select * from DB_AGENTOPS.SC_ECOMM.USERS