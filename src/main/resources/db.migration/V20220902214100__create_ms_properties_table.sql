set search_path to mhmarket;
DROP TABLE IF EXISTS properties;
CREATE TABLE properties(
                           propertyId BIGSERIAL NOT NULL PRIMARY KEY,
                           application varchar(50),
                           profile varchar(50),
                           label varchar(50),
                           key varchar(100) not null,
                           value varchar(100) not null,
                          description text,
                          createdat timestamp not null default now(),
                          updatedat timestamp default now()
)