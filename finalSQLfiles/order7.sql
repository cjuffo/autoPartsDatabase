INSERT INTO repairorder VALUES(000008,445347,1166,'18-NOV-2013',null, 'working',null);
INSERT INTO notes VALUES(01,000008,'Oil Change');
INSERT INTO procedures VALUES(01,'Oil Change',null,000008);
INSERT INTO lineitem VALUES(01,'Oil Change - LABOR',30.00,01,000008);
INSERT INTO lineitem VALUES(02,'Oil Change - PARTS',20.00,01,000008);
INSERT INTO invoice VALUES(111107,445347,000008,1122, null ,null, null,'estimate',1000332);
