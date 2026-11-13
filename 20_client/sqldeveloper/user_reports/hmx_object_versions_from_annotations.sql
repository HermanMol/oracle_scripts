-- #desc: Object version from union of Oracle HMX-annotations and HMX-annotations in source, including the version in UTC time zone
-- #style: Table
-- #date: 2026-11-13
select *
from hmx_all_object_versions
order by owner
    ,object_name
    ,object_type
