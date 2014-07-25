INSERT INTO repairorder VALUES(000005,193211,1166,'14-NOV-2013',null, 'working',null);
INSERT INTO notes VALUES(01,000005,'Flat tire, driver sider, back wheel');
INSERT INTO notes VALUES(02,000005,'Recommend cleaning oil filter');
INSERT INTO procedures VALUES(01,'Fix Flat',null,000005);
INSERT INTO procedures VALUES(02,'Clean Oil Filter',null, 000005);
INSERT INTO lineitem VALUES(01,'Fix Flat - LABOR',20.00,01,000005);
INSERT INTO lineitem VALUES(01,'Clean Filter - LABOR',20.00,02,000005);
INSERT INTO lineitem VALUES(02,'Clean Filter - PARTS',20.00,02,000005);
INSERT INTO invoice VALUES(111104,193211,000005,1177, null ,null, null,'repair',1000326);