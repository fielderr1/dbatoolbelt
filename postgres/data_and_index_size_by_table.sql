#http://wiki.postgresql.org/wiki/Disk_Usage

#Finding the size of your biggest relations
SELECT nspname || '.' || relname AS "relation",
   pg_size_pretty(pg_relation_size(C.oid)) AS "size"
 FROM pg_class C
 LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
 WHERE nspname NOT IN ('pg_catalog', 'information_schema')
 ORDER BY pg_relation_size(C.oid) DESC
 LIMIT 20;


#Finding the total size of your biggest tables
SELECT nspname || '.' || relname AS "relation",
    pg_size_pretty(pg_total_relation_size(C.oid)) AS "total_size"
  FROM pg_class C
  LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
  WHERE nspname NOT IN ('pg_catalog', 'information_schema')
    AND C.relkind <> 'i'
    AND nspname !~ '^pg_toast'
  ORDER BY pg_total_relation_size(C.oid) DESC
  LIMIT 20;