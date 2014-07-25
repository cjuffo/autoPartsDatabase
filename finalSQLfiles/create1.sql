
CREATE TABLE employee ( 
	empid                int  NOT NULL  ,
	position             varchar(10)  NOT NULL  ,
	firstname            varchar(20)  NOT NULL  ,
	lastname             varchar(20)  NOT NULL  ,
	salary               float NOT NULL  ,
	CONSTRAINT pk_employee PRIMARY KEY ( empid )
 ) ;
 
 
CREATE TABLE customer ( 
	customerid           int  NOT NULL  ,
	firstname            varchar(20)  NOT NULL  ,
	lastname             varchar(20)  NOT NULL  ,
	address              varchar(50)  NOT NULL  ,
	CONSTRAINT pk_customer PRIMARY KEY ( customerid )
 ) ;


CREATE TABLE vehicle ( 
	vin                  int  NOT NULL  ,
	customerid           int  NOT NULL  ,
	make                 varchar(20)  NOT NULL  ,
	model                varchar(20)  NOT NULL  ,
	year                 int  NOT NULL  ,
	odometerin           int  NOT NULL  ,
	odometerout          int    ,
	CONSTRAINT pk_vehicle PRIMARY KEY ( vin ),
	CONSTRAINT fk_vehicle_customer FOREIGN KEY ( customerid ) REFERENCES customer( customerid )
 );