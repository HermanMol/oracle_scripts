-- #desc: HMX DDL change Log with old version, source and SDEV_LINK jump to current object
-- #style: Table
-- #date: 2026-11-13
select  act_sysdate
    ,object_owner
    ,object_name
    ,object_type
    ,object_version 
    ,operation
    ,act_user
    ,act_server
    ,act_dbname
    ,act_schema
    ,act_dbuser
    ,act_osuser
    ,act_host
    ,act_ip_address
    ,act_module
    ,act_terminal
    ,old_text
    ,object_owner   as sdev_link_owner
    ,object_name    as sdev_link_name
    ,object_type    as sdev_link_type
    ,0              as sdev_link_line    
from hmx_ddl_log_data_version
order by act_sysdate desc