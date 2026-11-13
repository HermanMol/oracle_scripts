-- #desc: All schema errors with SDEV_LINK jump to object line
-- #style: Table
-- #date: 2026-11-13
select sys_context('userenv','current_schema') as "Schema"
    ,err.name
    ,err.type
    ,err.line || '/' || err.position as err_loc
    ,regexp_replace(substr(err.text,1,150),chr(10)||chr(10),chr(10),1,0,'m') as error_msg
    ,trim(trailing from src.text)
        || lpad('*',err.position,' ')
        as source_line
--    ,err.text as full_error_text    
--    ,hmx_utl.hex_dump(substr(err.text,1,8000)) as err_hex
    ,sys_context('userenv','current_schema') as sdev_link_owner
    ,err.name  as sdev_link_name
    ,err.type  as sdev_link_type
    ,err.line  as sdev_link_line
from user_errors err
left join user_source src 
    on (    src.name  = err.name
        and src.type  = err.type
        and src.line  = err.line
        )
order by err.name
    ,err.type
    ,err.line
    ,err.sequence
