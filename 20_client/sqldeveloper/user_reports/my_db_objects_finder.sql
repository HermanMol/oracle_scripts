-- #desc: DB Objects finder with SDEV_LINK junp and column values highlights
-- #style: Table
-- #date: 2026-11-13
select 'SQLDEV:LINK:'
     ||ao.owner
     ||':'||ao.object_type
     ||':'||ao.object_name
     ||':oracle.dbtools.raptor.controls.grid.DefaultDrillLink' foundobjects
      ,ao.object_type
      ,ao.owner
      ,ao.object_name
     ,cast (case status
        when 'VALID' then ao.status
        else '<html><body style="background-color: yellow;">'
        || ao.status
        || '</body></html>'
        end as varchar2(70)) as status
      ,created
      ,last_ddl_time
      ,timestamp
from all_objects ao
      ,table(apex_string.split(lower(:searchfor),';')) findthese
where ao.owner = sys_context('USERENV','CURRENT_SCHEMA')
and instr(lower(object_name),lower(findthese.column_value)) > 0
order by ao.status
    ,decode(ao.object_type
            ,'SEQUENCE'      ,99
            ,'SCHEDULE'      ,99
            ,'PROCEDURE'     ,14
            ,'PACKAGE'       ,10
            ,'PACKAGE BODY'  ,11
            ,'TYPE BODY'     ,99
            ,'TRIGGER'       ,12
            ,'TABLE'         ,01
            ,'INDEX'         ,99
            ,'VIEW'          ,02
            ,'SYNONYM'       ,99
            ,'FUNCTION'      ,13
            ,'JAVA CLASS'    ,99
            ,'JAVA SOURCE'   ,99
            ,'TYPE'          ,99
            ,'JOB'           ,99
            )
      ,ao.object_type
    ,ao.object_name
    ,ao.owner