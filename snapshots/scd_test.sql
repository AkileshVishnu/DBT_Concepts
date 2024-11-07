{% snapshot user_logins_snapshot_timestamp %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='user_id',
          check_cols=['last_login','email'],
        )
    }}

    select * from {{ source('Data Sources', 'user_logins') }}

{% endsnapshot %}