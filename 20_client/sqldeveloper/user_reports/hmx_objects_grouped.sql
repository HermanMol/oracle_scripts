-- #desc: HMX pl/sql objects grouped with oldest timestamp and status
-- #style: Table
-- #date: 2026-11-13
select object_name
    ,listagg(object_type, ',') within group (order by object_type) as object_types
    ,min(timestamp) as oldest_utc_time
    ,listagg(status, ',') within group (order by status) as status
from user_objects
where object_type in ('PACKAGE','PACKAGE BODY','TRIGGER','VIEW','FUNCTION','PROCEDURE','TYPE','TYPE BODY')
and (   object_name like ('HMX^_%') escape '^'
    or  object_name like ('STRING^_%')  escape '^'
    )
group by object_name
order by object_name
