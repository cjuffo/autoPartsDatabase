lCREATE TABLE lineitem ( 
	itemnumber           int  NOT NULL  ,
	description          varchar(55)  NOT NULL  ,
	linecost             float NOT NULL  ,
	procedurenumber      int  NOT NULL  ,
	ordernumber      	 int  NOT NULL  ,
	CONSTRAINT pk_lineitem PRIMARY KEY ( itemnumber, procedurenumber, ordernumber ),
	CONSTRAINT fk_lineitem_procedure FOREIGN KEY ( procedurenumber, ordernumber ) REFERENCES procedures( procedurenumber, ordernumber ), 
	CONSTRAINT fk_lineitem_repairorder FOREIGN KEY ( ordernumber ) REFERENCES repairorder( ordernumber ) 
 );
 
 
 CREATE TABLE invoice ( 
	invnumber            int  NOT NULL  ,
	vin                  int  NOT NULL  ,
	ordernumber          int  NOT NULL  ,
	empid                int  NOT NULL  ,
	balance              float   ,
	dateprinted          date    ,
	datepaid             date    ,
	status               varchar(10)  NOT NULL  ,
	customerid           int  NOT NULL  ,
	CONSTRAINT pk_invoice PRIMARY KEY ( invnumber ),
	CONSTRAINT fk_invoice_employee FOREIGN KEY ( empid ) REFERENCES employee( empid ) ,
	CONSTRAINT fk_invoice_vehicle FOREIGN KEY ( vin ) REFERENCES vehicle( vin ) ,
	CONSTRAINT fk_invoice_repairorder FOREIGN KEY ( ordernumber ) REFERENCES repairorder( ordernumber ) ,
	CONSTRAINT fk_invoice_customer FOREIGN KEY ( customerid ) REFERENCES customer( customerid ) 
 );
