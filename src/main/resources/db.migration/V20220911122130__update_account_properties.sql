set search_path to mhmarket;

DELETE
FROM ms_properties
WHERE application = 'account-service';

-- Port
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'server.port', '8080');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'grpc.server.port', '6565');

-- Datasource
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'spring.datasource.url',
        'jdbc:postgresql://localhost:5432/marketaccount');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'spring.datasource.password', '2110');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'spring.datasource.hikari.schema', 'mhmarket');

INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');
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
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'spring.kafka.bootstrap-servers', 'localhost:9092');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'spring.kafka.consumer.group-id', 'account-service-group');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'local', 'master', 'eureka.client.service-url.default-zone', 'http://localhost:8761/eureka');

-- Port
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'server.port', '8080');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'grpc.server.port', '6565');

-- Datasource
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.url',
        'jdbc:postgresql://103.162.20.141:5432/mhmarketaccount');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.password', '123456');
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
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.kafka.bootstrap-servers', 'localhost:9092');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.kafka.consumer.group-id', 'account-service-group');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'eureka.client.service-url.default-zone', 'http://103.162.20.141:8761/eureka');
