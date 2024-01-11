-- SQLite
CREATE TABLE USERS (username TEXT NOT NULL PRIMARY KEY, 
password NOT NULL, email NOT NULL);

INSERT INTO USERS (username, password, email) 
VALUES ('Joe','joespassword','joe@gmail.com');

SELECT username FROM USERS;
