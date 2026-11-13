-- #desc: User pl/sql Objects with SDEV_LINK jump to object
-- #style: Table
-- #date: 2026-11-13
select object_name
    ,object_type
    ,timestamp as timestamp_utc
    ,status
    ,sys_context('userenv','current_schema') as sdev_link_owner
    ,object_name                             as sdev_link_name
    ,object_type                             as sdev_link_type
from user_objects
where object_type in ('PACKAGE','PACKAGE BODY','TRIGGER','VIEW','FUNCTION','PROCEDURE','TYPE','TYPE BODY')
order by timestamp desc
    ,object_name
    ,object_type
