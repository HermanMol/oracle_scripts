-- #desc: Database property values versus session parameters
-- #style: Table
-- #date: 2026-11-13
select dbp.property_name
	,dbp.property_value as db_property_value
	,nsp.value as session_value
	,dbp.description
from database_properties dbp
full join nls_session_parameters nsp
on nsp.parameter = dbp.property_name
order by coalesce(dbp.property_name, nsp.parameter)