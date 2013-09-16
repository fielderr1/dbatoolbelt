-- what's out there on this box from the contrib (postgresql-contrib-9.2)
select * from pg_available_extensions;

-- what do we have installed
select * from pg_extension;

-- how do we install something?
create extension "uuid-ossp";

-- how do we uninstall something?
DROP EXTENSION "uuid-ossp";



------------ My typical extensions -------
create extension adminpack;  -- this helps out pgadmin
create extension pg_stat_statements;  --you need to update your startup_shared_libs for this to work.
create extension uuid-ossp;  -- guid time
create extension pg_buffercache;
create extension pg_freespacemap;
