CREATE USER 'petmall_app'@'localhost' IDENTIFIED BY 'petmall_pass';

GRANT CREATE, ALTER, INSERT, UPDATE, DELETE, SELECT  on *.* TO 'sammy'@'localhost' WITH GRANT OPTION;

CREATE petmall_db;

FLUSH PRIVILEGES;

