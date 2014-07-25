dCREATE TABLE repairorder ( 
	ordernumber          int  NOT NULL  ,
	vin                  int  NOT NULL  ,
	empid                int  NOT NULL  ,
	origindate           date  NOT NULL  ,
	enddate              date    ,
	status               varchar(10)  NOT NULL  ,
	ordercost            float    ,
	CONSTRAINT pk_repairorder PRIMARY KEY ( ordernumber ),
	CONSTRAINT fk_repairorder_employee FOREIGN KEY ( empid ) REFERENCES employee( empid ) ,
	CONSTRAINT fk_repairorder_vehicle FOREIGN KEY ( vin ) REFERENCES vehicle( vin ) 
 );


CREATE TABLE notes ( 
	notenumber           int  NOT NULL  ,
	ordernumber          int  NOT NULL  ,
	description          varchar(55)  NOT NULL  ,
	CONSTRAINT pk_notes PRIMARY KEY ( notenumber, ordernumber ),
	CONSTRAINT fk_notes_repairorder FOREIGN KEY ( ordernumber ) REFERENCES repairorder( ordernumber ) 
 );



CREATE TABLE procedures ( 
	procedurenumber      int  NOT NULL  ,
	description          varchar(55)  NOT NULL  ,
	totalcost            float    ,
	ordernumber          int  NOT NULL  ,
	CONSTRAINT pk_procedure PRIMARY KEY ( procedurenumber, ordernumber ),
	CONSTRAINT fk_procedure_repairorder FOREIGN KEY ( ordernumber ) REFERENCES repairorder( ordernumber )
 );
