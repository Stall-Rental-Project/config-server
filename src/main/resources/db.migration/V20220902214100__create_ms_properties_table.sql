set search_path to mhmarket;
create sequence ms_properties_propertyid_seq increment 1 minvalue 1;

DROP TABLE IF EXISTS ms_properties;
CREATE TABLE ms_properties(
                           propertyid integer primary key default nextval('ms_properties_propertyid_seq'::regclass),
                           application varchar(50),
                           profile varchar(50),
                           label varchar(50),
                           key varchar(100) not null,
                           value varchar(100) not null,
                          description text,
                          createdat timestamp not null default now(),
                          updatedat timestamp default now()
)