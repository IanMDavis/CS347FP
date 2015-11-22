--GENERATE SAMPLE LABS
INSERT INTO D3_LAB (LABID, NAME) VALUES (100, 'First Lab');
INSERT INTO D3_LAB (LABID, NAME) VALUES (101, 'Second Lab');
INSERT INTO D3_LAB (LABID, NAME) VALUES (102, 'Third Lab');
INSERT INTO D3_LAB (LABID, NAME) VALUES (104, 'Exec Lab');

--GENERATE EMPLOYEE STRUCTURE IN LABS
/* "EMPID", "D3_AUTH_AUTHID", "D3_LAB_LABID", "EMPNAME", "EMPEMAIL", "EMPOFFICE", "EMPPHONE", "EMPSTATUS", "STATEFFDATE", "CREATED", "CREATED_BY", "ROW_VERSION_NUMBER", "UPDATED", "UPDATED_BY" */
--Lab 103
INSERT INTO D3_CHRPSN_VIEW VALUES (100, 100, 104, 'Bill Restricted', 'Bill@try.com', 10, 9999, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_EXECDIR_VIEW VALUES (100, 100, 104, 'Ford Restricted', 'Ford@try.com', 11, 8888, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);


--Lab 100
INSERT INTO D3_LABEMP_VIEW VALUES (100, 100, 100, 'Scott Restricted', 'Scott@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABEMP_VIEW VALUES (100, 101, 100, 'Bob Read-Only', 'Bob@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABEMP_VIEW VALUES (100, 102, 100, 'Dipper Read-Write', 'Dipper@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABSYSADM_VIEW VALUES (100, 102, 100, 'Grenda Read-Write', 'Grenda@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABSYSADM_VIEW VALUES (100, 102, 100, 'Candy Read-Write', 'Candy@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABDIR_VIEW VALUES (100, 102, 100, 'Fiddleford Read-Write', 'Fiddleford@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);

--Lab 101
INSERT INTO D3_LABEMP_VIEW VALUES (100, 100, 101, 'Jim Restricted', 'Jim@try.com', 2, 2222, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABEMP_VIEW VALUES (100, 101, 101, 'Mabel Read-Only', 'Mabel@try.com', 2, 2222, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABEMP_VIEW VALUES (100, 102, 101, 'Stan Read-Write', 'Stan@try.com', 2, 2222, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABSYSADM_VIEW VALUES (100, 102, 100, 'McGucket Read-Write', 'McGucket@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABSYSADM_VIEW VALUES (100, 102, 100, 'Daryl Read-Write', 'Daryl@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABDIR_VIEW VALUES (100, 102, 100, 'Deputy Read-Write', 'Deputy@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);

--Lab 102
INSERT INTO D3_LABEMP_VIEW VALUES (100, 100, 102, 'Toby Restricted', 'Toby@try.com', 3, 3333, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABEMP_VIEW VALUES (100, 101, 102, 'Time-Baby Read-Only', 'Time_Baby@try.com', 3, 3333, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABEMP_VIEW VALUES (100, 102, 102, 'Wendy Read-Write', 'Wendy@try.com', 3, 3333, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);\
INSERT INTO D3_LABSYSADM_VIEW VALUES (100, 102, 100, 'Gompers Read-Write', 'Gompers@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABSYSADM_VIEW VALUES (100, 102, 100, 'Pacifica Read-Write', 'Pacifica@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO D3_LABDIR_VIEW VALUES (100, 102, 100, 'Buddy Read-Write', 'Buddy@try.com', 1, 1111, 'A', '01/01/2001', NULL, NULL, NULL, NULL, NULL);