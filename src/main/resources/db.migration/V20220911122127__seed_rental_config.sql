set search_path to mhmarket;

DELETE
FROM ms_properties
WHERE application = 'rental-service'
  AND profile = 'dev';

-- Port
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'server.port', '8082');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'grpc.server.port', '6566');

-- Datasource
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.url',
        'jdbc:postgresql://localhost:5432/marketrental');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.password', '2110');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.hikari.schema', 'mhmarket');

INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');
--
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.kafka.bootstrap-servers', 'localhost:9092');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.kafka.consumer.group-id', 'rental-service-group');
