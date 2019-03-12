-- VHS Database

-- Created March 11, 2019
-- by: Emily Davis, Todd Taylor, Thomas Townsley




  -- Customer Table



CREATE TABLE Customer
(
  CustomerID      INTEGER UNIQUE,
  NameF           varchar(50),
  NameL           varchar(50),
  AddressLine1    varchar(255), 
  AddressLine2    varchar(255),
  City            varchar(50),
  ZipCode         INTEGER, 
  StateID         INTEGER,  -- FK to StateID table
  CountryID       INTEGER,  -- FK to CountryID table

	CONSTRAINT CUSTID
		PRIMARY KEY (CustomerID),

  CONSTRAINT StateRef
		FOREIGN KEY (StateID) REFERENCES State_ID(StateID)
			ON DELETE SET NULL		ON UPDATE CASCADE,

  CONSTRAINT CountryRef
		FOREIGN KEY (CountryID) REFERENCES Country_ID(CountryID)
			ON DELETE SET NULL		ON UPDATE CASCADE
);




  -- Membership Table




CREATE TABLE Membership
(
  Subscription_ID INTEGER UNIQUE,
  CustomerID      INTEGER,
  ThemeID         INTEGER,
  StartDate       varchar(50),
  EndDate         varchar(50),
  PricePYR        REAL,
  PricePMO        REAL,

	CONSTRAINT SUBID
		PRIMARY KEY (Subscription_ID),

  CONSTRAINT CUSTID_Mem
		FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
			ON DELETE SET NULL		ON UPDATE CASCADE,

  CONSTRAINT ThemeID_Mem
		FOREIGN KEY (ThemeID) REFERENCES Theme(ThemeID)
			ON DELETE SET NULL		ON UPDATE CASCADE


);




  -- Billing Table




CREATE TABLE Billing
(
  BillingNumber   INTEGER UNIQUE,
  CustomerID      INTEGER,
  PaymentMethod   varchar(50),
  BillingCycle    varchar(50),
  PaymentStatus   varchar(50),
  CurrentBalance  REAL,

	CONSTRAINT BillingID
		PRIMARY KEY (BillingNumber),


  CONSTRAINT CUSTID_Bill
		FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
			ON DELETE SET NULL		ON UPDATE CASCADE

);





  -- Movie Table





CREATE TABLE Movie
(
  MovieID         INTEGER UNIQUE,
  MovieName       varchar(50),
  ReleaseDate     Date,
  MovieDirector   varchar(50),
  ThemeID         INTEGER,

  CONSTRAINT MOVID
		PRIMARY KEY (MovieID),

  CONSTRAINT ThemeID_Mov
		FOREIGN KEY (ThemeID) REFERENCES Theme(ThemeID)
			ON DELETE SET NULL		ON UPDATE CASCADE


);



  -- Theme Table



CREATE TABLE Theme
(
  ThemeID         INTEGER UNIQUE,
  ThemeName       varchar(50),

  	CONSTRAINT THEME_ID
		PRIMARY KEY (ThemeID)

);




  -- Customer_History Table




CREATE TABLE Customer_History
(
  CustomerID      INTEGER,
  MovieID         INTEGER,
  DatePurchased   Date,
  Price           Real,


  CONSTRAINT CUSTID_CustHist
		FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
			ON DELETE SET NULL		ON UPDATE CASCADE,


  CONSTRAINT MOVID_CustHist
		FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
			ON DELETE SET NULL		ON UPDATE CASCADE


);




  -- State_ID Table




CREATE TABLE State_ID
(
  StateID                 INTEGER Unique,
  StateName               varchar(50),
  StateAbbreviation       varchar(2),

	CONSTRAINT State_ID
		PRIMARY KEY (StateID)

);



  -- Country_ID Table




CREATE TABLE Country_ID
(
  CountryID         INTEGER Unique,
  CountryName       varchar(50),

	CONSTRAINT Country_ID
		PRIMARY KEY (CountryID)

);