-- #desc: HMX Log data with object version from HMX-annotation and SDEV_LINK jump to object line
-- #style: Table
-- #date: 2026-11-13
select logdata.*
    ,logdata.log_org_owner                      as sdev_link_owner
    ,logdata.log_org_object                     as sdev_link_name
    ,nvl(logdata.log_org_type,'PACKAGE BODY')   as sdev_link_type
    ,logdata.log_org_line                       as sdev_link_line
from hmx_log_with_object_version logdata
order by logdata.log_pkid desc