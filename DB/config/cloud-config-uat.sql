set search_path to emarketconfig;

DELETE
FROM properties
WHERE application = 'rental-service'
  AND profile = 'uat';

-- Port
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'server.port', '8084');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'grpc.server.port', '6565');

-- Datasource
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.datasource.url',
        'jdbc:postgresql://192.168.200.16:5434/emarketrental');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.datasource.username', 'postgres');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.datasource.password', '123456');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.datasource.hikari.schema', 'emarket');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.jpa.properties.hibernate.default_schema', 'emarket');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.jpa.properties.hibernate.metadata_builder_contributor',
        'com.banvien.emarket.rental.config.QueryDslContributor');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.jpa.properties.hibernate.jdbc.batch_size', '20');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.jpa.properties.hibernate.order_inserts', 'true');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.jpa.properties.hibernate.order_updates', 'true');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.jpa.properties.hibernate.batch_versioned_data', 'true');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.redis.host', 'redis');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.redis.port', '6379');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.redis.password', '123456');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.kafka.bootstrap-servers', '192.168.200.45:32127');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'spring.kafka.consumer.group-id', 'emarket-rental-service-group');

-- AWS S3
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'aws.s3.bucket', 'bv-emarket');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'aws.s3.content-category', 'uat');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'aws.ses.default-sender', 'emarket@oplacrm.com');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'aws.ses.api-base-url', 'https://api-emarket.cypher.ph');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'aws.ses.web-base-url', 'https://emarket.cypher.ph');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'aws.ses.default-cc-emails',
        'man.dang-thi@banvien.com.vn');

-- Executor
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'executor.core-threads', '4');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'executor.max-threads', '20');
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'executor.keep-alive-secs', '10');

-- Task Scheduler
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'task-scheduler.pool-size', '2');

-- Sync Private Stall Holder
INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'sync-private-stallholder-file', 'seed/privatestallholders-uat.json');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'sync-manage-market-operator-file', 'seed/managemarketoperator-uat.json');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'appointment.embed-form', 'https://qaappointments.sparksoft.com.ph/appointment/data/');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'mdad.app-id',
        '0d03c7e07d37ad0a434f869cfc265dbd.unifysyscontrol.com');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'mdad.app-secret',
        '62b5816b64c8eb63910d5d5a9d642002b75fd9dacbebcec441e3b10695b744ae');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'mdad.api-base-url', 'https://uqaoubpas.unifysyscontrol.com');

INSERT INTO properties (application, profile, label, ""KEY"", "VALUE")
VALUES ('rental-service', 'uat', 'master', 'emarket.api-base-url', 'https://api-test.qcemarket.com');