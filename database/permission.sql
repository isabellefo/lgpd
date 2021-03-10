CREATE DATABASE petmall_db;

CREATE USER 'petmall_app'@'localhost' IDENTIFIED BY 'petmall_pass';

GRANT CREATE, ALTER, INSERT, UPDATE, DELETE, SELECT  on petmall_db.* TO 'petmall_app'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;
