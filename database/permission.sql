CREATE DATABASE IF NOT EXISTS petmall_db;

CREATE DATABASE IF NOT EXISTS petmall_logs;

CREATE USER 'petmall_app'@'localhost' IDENTIFIED BY 'petmall_pass';

GRANT ALL on petmall_db.* TO 'petmall_app'@'localhost' WITH GRANT OPTION;

GRANT ALL on petmall_logs.* TO 'petmall_app'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;