INSERT INTO repairorder VALUES(000010,658321,1144,'08-DEC-2013',null, 'working',null);
INSERT INTO notes VALUES(01,000010,'Oil Change');
INSERT INTO procedures VALUES(01,'Oil Change',null,000010);
INSERT INTO lineitem VALUES(01,'Oil Change - LABOR',30.00,01,000010);
INSERT INTO lineitem VALUES(02,'Oil Change - PARTS',20.00,01,000010);
INSERT INTO invoice VALUES(111109,658321,000010,1122, null ,null, null,'repair',1000334);