-- #desc: DB version full banner on one line
-- #style: Table
-- #date: 2026-11-13
select replace (banner_full,chr(10),' ') as db_banner_full 
from v$version