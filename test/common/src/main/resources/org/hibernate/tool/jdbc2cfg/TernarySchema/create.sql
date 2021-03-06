CREATE SCHEMA HTT
CREATE SCHEMA OTHERSCHEMA 
CREATE SCHEMA THIRDSCHEMA 
CREATE TABLE HTT.USERS ( ID INT NOT NULL, NAME VARCHAR(20), PRIMARY KEY(ID))
CREATE TABLE OTHERSCHEMA.ROLE ( ID INT NOT NULL, NAME VARCHAR(20), PRIMARY KEY(ID))
CREATE TABLE THIRDSCHEMA.USERROLES ( USERID INT NOT NULL, ROLEID INT NOT NULL, PRIMARY KEY(USERID, ROLEID))
ALTER TABLE THIRDSCHEMA.USERROLES ADD CONSTRAINT TOROLES FOREIGN KEY (ROLEID) REFERENCES OTHERSCHEMA.ROLE(ID)
ALTER TABLE THIRDSCHEMA.USERROLES ADD CONSTRAINT TOUSERS FOREIGN KEY (USERID) REFERENCES HTT.USERS(ID)
CREATE TABLE HTT.PLAINROLE ( ID INT NOT NULL, NAME VARCHAR(20), PRIMARY KEY(ID))
CREATE TABLE HTT.PLAINUSERROLES ( USERID INT NOT NULL, ROLEID INT NOT NULL, PRIMARY KEY(USERID, ROLEID))
ALTER TABLE HTT.PLAINUSERROLES ADD CONSTRAINT PLAINTOROLES FOREIGN KEY (ROLEID) REFERENCES HTT.PLAINROLE(ID)
ALTER TABLE HTT.PLAINUSERROLES ADD CONSTRAINT PLAINTOUSERS FOREIGN KEY (USERID) REFERENCES HTT.USERS(ID)