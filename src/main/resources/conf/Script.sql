create table APP_USER (
   id BIGINT NOT NULL AUTO_INCREMENT,
   sso_id VARCHAR(30) NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (sso_id)
);
  
  
create table USER_DOCUMENT(
   id BIGINT NOT NULL AUTO_INCREMENT,
   user_id BIGINT NOT NULL,
   name  VARCHAR(100) NOT NULL,
   description VARCHAR(255) ,
   type VARCHAR(100) NOT NULL,
   content longblob NOT NULL,
   PRIMARY KEY (id),
   CONSTRAINT document_user FOREIGN KEY (user_id) REFERENCES APP_USER (id) ON UPDATE CASCADE ON DELETE CASCADE
);




SQL> CREATE USER ShoppingKart IDENTIFIED BY ShoppingKart;

User created.

SQL> GRANT CONNECT TO ShoppingKart;

Grant succeeded.

SQL> GRANT CONNECT, RESOURCE, DBA TO ShoppingKart;

Grant succeeded.

SQL> GRANT CREATE SESSION GRANT ANY PRIVILEGE TO ShoppingKart;
GRANT CREATE SESSION GRANT ANY PRIVILEGE TO ShoppingKart
      *
ERROR at line 1:
ORA-00990: missing or invalid privilege


SQL> GRANT UNLIMITED TABLESPACE TO ShoppingKart;

Grant succeeded.