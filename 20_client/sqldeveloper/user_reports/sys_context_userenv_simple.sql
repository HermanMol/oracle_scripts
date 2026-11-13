-- #desc: Simple list of SYS_CONTEXT('USERENV',...) predefined parameters, values and the full statement
-- #style: Table
-- #date: 2026-11-13
select infotype
	,sys_context('USERENV', infotype) as info_value
  ,'sys_context(''USERENV'',''' || infotype || ''')' as cmd
from	(select 'ACTION' as infotype from dual union all
	select 'AUDITED_CURSORID' as infotype from dual union all
	select 'AUTHENTICATED_IDENTITY' as infotype from dual union all
	select 'AUTHENTICATION_DATA' as infotype from dual union all
	select 'AUTHENTICATION_METHOD' as infotype from dual union all
	select 'BG_JOB_ID' as infotype from dual union all
	select 'CDB_NAME' as infotype from dual union all
	select 'CLIENT_IDENTIFIER' as infotype from dual union all
	select 'CLIENT_INFO' as infotype from dual union all
	select 'CLIENT_PROGRAM_NAME' as infotype from dual union all
	select 'CON_NAME' as infotype from dual union all
	select 'CURRENT_BIND' as infotype from dual union all
	select 'CURRENT_EDITION_ID' as infotype from dual union all
	select 'CURRENT_EDITION_NAME' as infotype from dual union all
	select 'CURRENT_SCHEMA' as infotype from dual union all
	select 'CURRENT_SCHEMAID' as infotype from dual union all
--	select 'CURRENT_SQL' as infotype from dual union all
--	select 'CURRENT_SQL_LENGTH' as infotype from dual union all
	select 'CURRENT_USER' as infotype from dual union all
	select 'CURRENT_USERID' as infotype from dual union all
	select 'DATABASE_ROLE' as infotype from dual union all
	select 'DB_DOMAIN' as infotype from dual union all
	select 'DB_NAME' as infotype from dual union all
	select 'DB_UNIQUE_NAME' as infotype from dual union all
	select 'ENTRYID' as infotype from dual union all
	select 'ENTERPRISE_IDENTITY' as infotype from dual union all
	select 'FG_JOB_ID' as infotype from dual union all
	select 'GLOBAL_CONTEXT_MEMORY' as infotype from dual union all
	select 'GLOBAL_UID' as infotype from dual union all
	select 'HOST' as infotype from dual union all
	select 'IDENTIFICATION_TYPE' as infotype from dual union all
	select 'INSTANCE' as infotype from dual union all
	select 'INSTANCE_NAME' as infotype from dual union all
	select 'IP_ADDRESS' as infotype from dual union all
--	select 'ISDBA' as infotype from dual union all
	select 'LANG' as infotype from dual union all
	select 'LANGUAGE' as infotype from dual union all
	select 'MODULE' as infotype from dual union all
	select 'NETWORK_PROTOCOL' as infotype from dual union all
	select 'NLS_CALENDAR' as infotype from dual union all
	select 'NLS_CURRENCY' as infotype from dual union all
	select 'NLS_DATE_FORMAT' as infotype from dual union all
	select 'NLS_DATE_LANGUAGE' as infotype from dual union all
--	select 'NLS_SORT BINARY' as infotype from dual union all
	select 'NLS_TERRITORY' as infotype from dual union all
	select 'OS_USER' as infotype from dual union all
	select 'PLATFORM_SLASH' as infotype from dual union all
	select 'POLICY_INVOKER' as infotype from dual union all
	select 'PROXY_ENTERPRISE_IDENTITY' as infotype from dual union all
--	select 'PROXY_GLOBAL_UID' as infotype from dual union all
	select 'PROXY_USER' as infotype from dual union all
	select 'PROXY_USERID' as infotype from dual union all
	select 'SERVER_HOST' as infotype from dual union all
	select 'SERVICE_NAME' as infotype from dual union all
	select 'SESSION_EDITION_ID' as infotype from dual union all
	select 'SESSION_EDITION_NAME' as infotype from dual union all
	select 'SESSION_USER' as infotype from dual union all
	select 'SESSION_USERID' as infotype from dual union all
	select 'SESSIONID' as infotype from dual union all
	select 'SID' as infotype from dual union all
	select 'STATEMENTID' as infotype from dual union all
	select 'TERMINAL' as infotype from dual
	) infotypes
order by infotype
