-- what's out there on this box from the contrib (postgresql-contrib-9.2)
select * from pg_available_extensions;

-- what do we have installed
select * from pg_extension;

-- how do we install something?
create extension "uuid-ossp";

-- how do we uninstall something?
DROP EXTENSION "uuid-ossp";
