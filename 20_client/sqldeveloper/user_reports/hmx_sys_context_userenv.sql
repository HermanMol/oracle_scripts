-- #desc: SYS_CONTEXT('USERENV',...) using HMX_SESSION.GET_SYS_CONTEXT avoiding crash for unknown parameters
-- #style: Table
-- #date: 2026-11-13
select info_item
    ,info_value
    ,sql_cmd
from hmx_sys_context_userenv
order by info_item
    ,info_value
    ,sql_cmd
