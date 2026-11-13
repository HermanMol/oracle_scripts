-- #desc: Union of all HMX-annotations and all Oracle annotations
-- #style: Table
-- #date: 2026-11-13
select *
from hmx_all_annotations
order by owner
    ,object_name
    ,object_type
    ,column_name nulls first
    ,object_line
    ,annotation_name