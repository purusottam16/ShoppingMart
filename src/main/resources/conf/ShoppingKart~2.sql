CREATE TABLE persistent_logins (
    username VARCHAR(64) NOT NULL,
    series VARCHAR(64) NOT NULL,
    token VARCHAR(64) NOT NULL,
    last_used TIMESTAMP NOT NULL,
    PRIMARY KEY (series)
);

create table APP_USER (
   id INTEGER NOT NULL,
   sso_id VARCHAR(30) NOT NULL,
   password VARCHAR(100) NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (sso_id)
);
create table USER_PROFILE(
   id INTEGER NOT NULL,
   type VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (type)
);

CREATE TABLE APP_USER_USER_PROFILE (
    user_id INT NOT NULL,
    user_profile_id INT NOT NULL,
    PRIMARY KEY (user_id, user_profile_id),
    CONSTRAINT FK_APP_USER FOREIGN KEY (user_id) REFERENCES APP_USER (id),
    CONSTRAINT FK_USER_PROFILE FOREIGN KEY (user_profile_id) REFERENCES USER_PROFILE (id)
);

INSERT INTO USER_PROFILE(id,type)
VALUES (t2_seq.nextval,'USER');
  
INSERT INTO USER_PROFILE(id,type)
VALUES (t2_seq.nextval,'ADMIN');
  
INSERT INTO USER_PROFILE(id,type)
VALUES (t2_seq.nextval,'MANAGER');
commit;
create sequence t1_seq start with 1 increment by 1 nomaxvalue;
create sequence t2_seq start with 1 increment by 1 nomaxvalue;
create sequence t3_seq start with 1 increment by 1 nomaxvalue;
INSERT INTO APP_USER(id,sso_id, password, first_name, last_name, email)
VALUES (t1_seq.nextval,'Puru','iX5sEx/WtKIhiOePjpTMo/RTqO8vp81L58xo8cz9qGc=', 'Puru','Singh','puru16@gmail.com');
create table USER_DOCUMENT(
   id INTEGER NOT NULL,
   user_id INTEGER NOT NULL,
   name  VARCHAR(100) NOT NULL,
   description VARCHAR(255) ,
   type VARCHAR(100) NOT NULL,
   content blob NOT NULL,
   PRIMARY KEY (id),
   CONSTRAINT document_user FOREIGN KEY (user_id) REFERENCES APP_USER (id)
);