-- #desc: Output of the utPLSQL pipelined function ut_runner.get_suites_info()
-- #style: Table
-- #date: 2026-11-13
select object_owner
    , object_name
    , item_type
    , item_name
    , item_description
    , item_line_no
    , path
    , disabled_flag
    , disabled_reason
    , tags
from table(ut_runner.get_suites_info())