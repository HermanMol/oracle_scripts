-- #desc: HMX Log data simple, no fancy stuff but with SDEV_LINK jump to object line
-- #style: Table
-- #date: 2026-11-13
select log_pkid
	,log_msg
	,log_time
	,log_type
	,log_level
	,log_scope
	,log_tags
	,log_org_owner
	,log_org_object
	,nvl(log_org_type,'(package body?)') as log_org_type
	,log_org_method
	,log_org_line
	,log_call_depth
	,log_process
	,log_sqlerrm
	,log_sqlcode
	,log_call_stack
	,log_error_backtrace
	,log_sesid
	,log_server
	,log_dbname
	,log_dbschema
	,log_dbuser
	,log_osuser
	,log_app_user
	,log_org_owner                      as sdev_link_owner
	,log_org_object                     as sdev_link_name
    ,nvl(log_org_type,'PACKAGE BODY')   as sdev_link_type
	,log_org_line                       as sdev_link_line
from hmx_log_data
order by log_pkid desc
