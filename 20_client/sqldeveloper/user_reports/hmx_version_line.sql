-- #desc: One line, two columns with proper generated HMX_OBJECT_VERSION
-- #style: Table
-- #date: 2026-11-13
select '.HMX_OBJECT_VERSION' || ':'
    || ' ' || to_char(current_timestamp,'yyyy-mm-dd hh24:mi:ss TZH:TZM')
    as for_hmx_objects
    ,'add hmx_object_version'     
        || ' ''' || to_char(current_timestamp,'yyyy-mm-dd hh24:mi:ss TZH:TZM')
        || ''''
        as for_oracle_annotation
from dual
