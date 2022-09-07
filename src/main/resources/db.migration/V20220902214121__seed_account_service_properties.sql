set search_path to mhmarket;

DELETE
FROM ms_properties
WHERE application = 'account-service'
  AND profile = 'dev';

-- Port
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'server.port', '8080');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'grpc.server.port', '9090');

-- Datasource
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.url',
        'jdbc:postgresql://localhost:5432/marketaccount');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.password', '2110');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.hikari.schema', 'mhmarket');

INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');
-- INSERT INTO ms_properties (application, profile, label, key, value)
-- VALUES ('account-service', 'dev', 'master', 'spring.jpa.properties.hibernate.metadata_builder_contributor',
--         'com.banvien.emarket.account.config.QueryDslContributor');
--
-- INSERT INTO ms_properties (application, profile, label, key, value)
-- VALUES ('account-service', 'dev', 'master', 'spring.redis.host', '192.168.200.16');
-- INSERT INTO ms_properties (application, profile, label, key, value)
-- VALUES ('account-service', 'dev', 'master', 'spring.redis.port', '6379');
-- INSERT INTO ms_properties (application, profile, label, key, value)
-- VALUES ('account-service', 'dev', 'master', 'spring.redis.password', '123456');
--
-- INSERT INTO ms_properties (application, profile, label, key, value)
-- VALUES ('account-service', 'dev', 'master', 'spring.kafka.bootstrap-servers', '192.168.200.45:32107');
-- INSERT INTO ms_properties (application, profile, label, key, value)
-- VALUES ('account-service', 'dev', 'master', 'spring.kafka.consumer.group-id', 'emarket-account-service-group');
