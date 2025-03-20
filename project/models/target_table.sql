{{
    config(
        materialized="incremental",
        unique_key="id",
        full_refresh=false
    )
}}

select
    source.id as id,
    source.c1 as c2

from {{ source("admin", "source_table") }} source
