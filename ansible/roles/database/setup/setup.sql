DROP USER IF EXISTS 'exporter'@'localhost';
CREATE USER 'exporter' @'localhost' IDENTIFIED BY 'password' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON performance_schema.* TO 'exporter'@'%' IDENTIFIED BY 'password'; 