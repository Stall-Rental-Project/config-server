set search_path to mhmarket;

DELETE
FROM properties
WHERE application = 'market-service'
  AND profile = 'dev';

-- Port
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'server.port', '8081');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'grpc.server.port', '9566');

-- Datasource
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'spring.datasource.url',
        'jdbc:postgresql://103.162.20.141:5432/mhmarketmarket');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'spring.datasource.password', '123456');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'spring.datasource.hikari.schema', 'mhmarket');

INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');
--
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'spring.kafka.bootstrap-servers', '103.162.20.141:9092');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'spring.kafka.consumer.group-id', 'market-service-group');

INSERT INTO properties (application, profile, label, key, value)
VALUES ('market-service', 'dev', 'master', 'eureka.client.serviceUrl.defaultZone', 'http://103.162.20.141:8761/eureka/');




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


DELETE
FROM properties
WHERE application = 'account-service'
  AND profile = 'dev' ;

-- Port
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'server.port', '8080');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'grpc.server.port', '9565');

-- Datasource
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.url',
        'jdbc:postgresql://103.162.20.141:5432/mhmarketaccount');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.password', '123456');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.datasource.hikari.schema', 'mhmarket');

INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');

--
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.kafka.bootstrap-servers', '103.162.20.141:9092');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.kafka.consumer.group-id', 'account-service-group');
INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'spring.jpa.properties.hibernate.default_schema', 'mhmarket');

INSERT INTO properties (application, profile, label, key, value)
VALUES ('account-service', 'dev', 'master', 'eureka.client.serviceUrl.defaultZone', 'http://103.162.20.141:8761/eureka/');
