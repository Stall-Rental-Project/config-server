set search_path to mhmarket;

DELETE
FROM properties
WHERE application = 'rental-service'
  AND profile = 'dev';

-- Port
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'server.port', '8082');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'grpc.server.port', '9567');

-- Datasource
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.url',
        'jdbc:postgresql://103.162.20.141:5432/mhmarketrental');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.password', '123456');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.datasource.hikari.schema', 'mhmarket');

INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');
--
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.kafka.bootstrap-servers', '103.162.20.141:9092');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'spring.kafka.consumer.group-id', 'rental-service-group');

INSERT INTO properties (application, profile, label, key, value)
VALUES ('rental-service', 'dev', 'master', 'eureka.client.serviceUrl.defaultZone', 'http://103.162.20.141:8761/eureka/');
