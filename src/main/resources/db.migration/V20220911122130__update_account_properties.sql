set search_path to mhmarket;

DELETE
FROM ms_properties
WHERE application = 'account-service'
  AND profile = 'dev' ;

-- Port
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'server.port', '8080');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'grpc.server.port', '9565');

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

--
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.kafka.bootstrap-servers', '103.162.20.141:9092');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.kafka.consumer.group-id', 'account-service-group');
INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');

INSERT INTO ms_properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'eureka.client.serviceUrl.defaultZone', 'http://103.162.20.141:8761/eureka/');
