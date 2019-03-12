
--More things updated here in this SQL file.
--Quite the structured language.

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

CREATE TABLE Membership
(
  CustomerID      INTEGER,
  ThemeID         INTEGER,
  StartDate       varchar(50),
  EndDate         varchar(50),
  PricePYR        REAL,
  PricePMO        REAL,

  CONSTRAINT CUSTID_Mem
		FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
			ON DELETE SET NULL		ON UPDATE CASCADE

);

CREATE TABLE Billing
(
  CustomerID      INTEGER,
  PaymentMethod   varchar(50),
  BillingCycle    varchar(50),
  PaymentStatus   varchar(50),
  CurrentBalance  REAL,


  CONSTRAINT CUSTID_Bill
		FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
			ON DELETE SET NULL		ON UPDATE CASCADE

);

CREATE TABLE Movie
(
  MovieID         INTEGER UNIQUE,
  MovieName       varchar(50),
  ReleaseDate     Date,
  MovieDirector   varchar(50),
  ThemeID         INTEGER,

  	CONSTRAINT MOVID
		PRIMARY KEY (MovieID)

);


CREATE TABLE Customer_History
(
  MovieID         INTEGER,
  DatePurchased   Date,
  ThemeID         INTEGER,
  Price           Real,

  CONSTRAINT MOVID_CustHist
		FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
			ON DELETE SET NULL		ON UPDATE CASCADE,


  CONSTRAINT ThemeID_CustHist
		FOREIGN KEY (ThemeID) REFERENCES Movie(ThemeID)
			ON DELETE SET NULL		ON UPDATE CASCADE

);


CREATE TABLE State_ID
(
  StateID                 INTEGER Unique,
  StateName               varchar(50),
  StateAbbreviation       varchar(2),

	CONSTRAINT State_ID
		PRIMARY KEY (StateID),

);

CREATE TABLE Country_ID
(
  CountryID         INTEGER Unique,
  CountryName       varchar(50),

	CONSTRAINT Country_ID
		PRIMARY KEY (CountryID),

);