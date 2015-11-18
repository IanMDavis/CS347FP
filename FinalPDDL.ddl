-- Generated by Oracle SQL Developer Data Modeler 4.1.1.888
--   at:        2015-11-18 15:03:57 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE D3_Approver
  (
    ApproverID   INTEGER NOT NULL ,
    D3_RFE_RFEID INTEGER ,
    D3_Emp_EmpID INTEGER
  ) ;
ALTER TABLE D3_Approver ADD CONSTRAINT D3_Approver_PK PRIMARY KEY ( ApproverID ) ;


CREATE TABLE D3_Auth
  (
    AuthID       INTEGER NOT NULL ,
    RIGHT        VARCHAR2 (10) ,
    D3_Emp_EmpID INTEGER
  ) ;
CREATE UNIQUE INDEX D3_Auth__IDX ON D3_Auth
  (
    D3_Emp_EmpID ASC
  )
  ;
ALTER TABLE D3_Auth ADD CONSTRAINT D3_Auth_PK PRIMARY KEY ( AuthID ) ;


CREATE TABLE D3_Comment
  (
    CommentID    INTEGER NOT NULL ,
    D3_RFE_RFEID INTEGER ,
    EnteredBy    INTEGER NOT NULL ,
    CommEntDate  DATE NOT NULL
  ) ;
ALTER TABLE D3_Comment ADD CONSTRAINT D3_Comment_PK PRIMARY KEY ( CommentID ) ;


CREATE TABLE D3_Contacts
  (
    ContactID    INTEGER NOT NULL ,
    D3_RFE_RFEID INTEGER ,
    D3_Emp_EmpID INTEGER
  ) ;
ALTER TABLE D3_Contacts ADD CONSTRAINT D3_Contacts_PK PRIMARY KEY ( ContactID ) ;


CREATE TABLE D3_Doc
  ( DocID INTEGER NOT NULL , D3_RFE_RFEID INTEGER
  ) ;
ALTER TABLE D3_Doc ADD CONSTRAINT D3_Doc_PK PRIMARY KEY ( DocID ) ;


CREATE TABLE D3_Emp
  (
    EmpID          INTEGER NOT NULL ,
    D3_Auth_AuthID INTEGER ,
    D3_Lab_LabID   INTEGER ,
    EmpName        VARCHAR2 (30) NOT NULL ,
    EmpEmail       VARCHAR2 (30) NOT NULL ,
    EmpOffice      INTEGER NOT NULL ,
    EmpPhone       INTEGER NOT NULL ,
    EmpStatus      VARCHAR2 (1) NOT NULL ,
    StatEffDate    DATE NOT NULL ,
    Job1           VARCHAR2 (255) NOT NULL ,
    Job2           VARCHAR2 (255)
  ) ;
CREATE UNIQUE INDEX D3_Emp__IDX ON D3_Emp
  (
    D3_Auth_AuthID ASC
  )
  ;
ALTER TABLE D3_Emp ADD CONSTRAINT D3_Emp_PK PRIMARY KEY ( EmpID ) ;


CREATE TABLE D3_Lab
  ( LabID INTEGER NOT NULL
  ) ;
ALTER TABLE D3_Lab ADD CONSTRAINT D3_Lab_PK PRIMARY KEY ( LabID ) ;


CREATE TABLE D3_RFE
  (
    RFEID              INTEGER NOT NULL ,
    D3_Emp_EmpID       INTEGER ,
    D3_Status_StatusID INTEGER ,
    D3_Task_TaskID     INTEGER ,
    Explanation        VARCHAR2 (4000) NOT NULL ,
    AltProtections     VARCHAR2 (4000) NOT NULL ,
    AppRevDate         DATE ,
    EffectDate         DATE NOT NULL
  ) ;
ALTER TABLE D3_RFE ADD CONSTRAINT D3_RFE_PK PRIMARY KEY ( RFEID ) ;


CREATE TABLE D3_RFE_Contact
  (
    ContRole     INTEGER NOT NULL ,
    ContEmpID    INTEGER NOT NULL ,
    EffDate      DATE NOT NULL ,
    Comments     VARCHAR2 (4000) ,
    D3_RFE_RFEID INTEGER
  ) ;
ALTER TABLE D3_RFE_Contact ADD CONSTRAINT D3_RFE_Contact_PK PRIMARY KEY ( ContEmpID ) ;


CREATE TABLE D3_Roles
  (
    RoleID       INTEGER NOT NULL ,
    RoleType     VARCHAR2 (30) NOT NULL ,
    Descrption   VARCHAR2 (500) NOT NULL ,
    D3_RFE_RFEID INTEGER NOT NULL
  ) ;
ALTER TABLE D3_Roles ADD CONSTRAINT D3_Roles_PK PRIMARY KEY ( RoleID ) ;


CREATE TABLE D3_SHist
  (
    SHistID        INTEGER NOT NULL ,
    D3_RFE_RFEID   INTEGER ,
    StatusID       INTEGER NOT NULL ,
    TaskID         INTEGER NOT NULL ,
    EffectDate     DATE NOT NULL ,
    EmpID          INTEGER NOT NULL ,
    Explanation    VARCHAR2 (4000) NOT NULL ,
    AltProtections VARCHAR2 (4000) NOT NULL ,
    AppRevDate     DATE NOT NULL ,
    D3_Task_TaskID INTEGER
  ) ;
ALTER TABLE D3_SHist ADD CONSTRAINT D3_SHist_PK PRIMARY KEY ( SHistID ) ;


CREATE TABLE D3_Status
  (
    StatusID    INTEGER NOT NULL ,
    Status      VARCHAR2 (30) NOT NULL ,
    Description VARCHAR2 (500) NOT NULL
  ) ;
ALTER TABLE D3_Status ADD CONSTRAINT D3_Status_PK PRIMARY KEY ( StatusID ) ;


CREATE TABLE D3_Task
  (
    TaskID     INTEGER NOT NULL ,
    EffectDate DATE NOT NULL ,
    TaskAbbr   VARCHAR2 (15) NOT NULL ,
    TaskDesc   VARCHAR2 (4000) NOT NULL
  ) ;
ALTER TABLE D3_Task ADD CONSTRAINT D3_Task_PK PRIMARY KEY ( TaskID ) ;


ALTER TABLE D3_Approver ADD CONSTRAINT D3_Approver_D3_Emp_FK FOREIGN KEY ( D3_Emp_EmpID ) REFERENCES D3_Emp ( EmpID ) ;

ALTER TABLE D3_Approver ADD CONSTRAINT D3_Approver_D3_RFE_FK FOREIGN KEY ( D3_RFE_RFEID ) REFERENCES D3_RFE ( RFEID ) ;

ALTER TABLE D3_Auth ADD CONSTRAINT D3_Auth_D3_Emp_FK FOREIGN KEY ( D3_Emp_EmpID ) REFERENCES D3_Emp ( EmpID ) ;

ALTER TABLE D3_Comment ADD CONSTRAINT D3_Comment_D3_RFE_FK FOREIGN KEY ( D3_RFE_RFEID ) REFERENCES D3_RFE ( RFEID ) ;

ALTER TABLE D3_Contacts ADD CONSTRAINT D3_Contacts_D3_Emp_FK FOREIGN KEY ( D3_Emp_EmpID ) REFERENCES D3_Emp ( EmpID ) ;

ALTER TABLE D3_Contacts ADD CONSTRAINT D3_Contacts_D3_RFE_FK FOREIGN KEY ( D3_RFE_RFEID ) REFERENCES D3_RFE ( RFEID ) ;

ALTER TABLE D3_Doc ADD CONSTRAINT D3_Doc_D3_RFE_FK FOREIGN KEY ( D3_RFE_RFEID ) REFERENCES D3_RFE ( RFEID ) ;

ALTER TABLE D3_Emp ADD CONSTRAINT D3_Emp_D3_Auth_FK FOREIGN KEY ( D3_Auth_AuthID ) REFERENCES D3_Auth ( AuthID ) ;

ALTER TABLE D3_Emp ADD CONSTRAINT D3_Emp_D3_Lab_FK FOREIGN KEY ( D3_Lab_LabID ) REFERENCES D3_Lab ( LabID ) ;

ALTER TABLE D3_RFE_Contact ADD CONSTRAINT D3_RFE_Contact_D3_RFE_FK FOREIGN KEY ( D3_RFE_RFEID ) REFERENCES D3_RFE ( RFEID ) ;

ALTER TABLE D3_RFE ADD CONSTRAINT D3_RFE_D3_Emp_FK FOREIGN KEY ( D3_Emp_EmpID ) REFERENCES D3_Emp ( EmpID ) ;

ALTER TABLE D3_RFE ADD CONSTRAINT D3_RFE_D3_Status_FK FOREIGN KEY ( D3_Status_StatusID ) REFERENCES D3_Status ( StatusID ) ;

ALTER TABLE D3_RFE ADD CONSTRAINT D3_RFE_D3_Task_FK FOREIGN KEY ( D3_Task_TaskID ) REFERENCES D3_Task ( TaskID ) ;

ALTER TABLE D3_Roles ADD CONSTRAINT D3_Roles_D3_RFE_FK FOREIGN KEY ( D3_RFE_RFEID ) REFERENCES D3_RFE ( RFEID ) ;

ALTER TABLE D3_SHist ADD CONSTRAINT D3_SHist_D3_RFE_FK FOREIGN KEY ( D3_RFE_RFEID ) REFERENCES D3_RFE ( RFEID ) ;

ALTER TABLE D3_SHist ADD CONSTRAINT D3_SHist_D3_Task_FK FOREIGN KEY ( D3_Task_TaskID ) REFERENCES D3_Task ( TaskID ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             2
-- ALTER TABLE                             29
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
