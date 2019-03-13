--More things updated here in this SQL file.
--Quite the structured language.

-- DROP TABLE Customer;
-- DROP TABLE Membership;
-- DROP TABLE Billing;
-- DROP TABLE Movie;
-- DROP TABLE Customer_History;
-- DROP TABLE State_ID;
-- DROP TABLE Country_ID;


CREATE TABLE Customer
(
  CustomerID      INTEGER PRIMARY KEY,
  NameF           varchar(50),
  NameL           varchar(50),
  AddressLine1    varchar(255), 
  AddressLine2    varchar(255),
  City            varchar(50),
  ZipCode         INTEGER, 
  StateID         INTEGER,  -- FK to StateID table
  CountryID       INTEGER,  -- FK to CountryID table

  CONSTRAINT StateRef
		FOREIGN KEY (StateID) REFERENCES State_ID(StateID)
			ON DELETE SET NULL		ON UPDATE CASCADE,


  CONSTRAINT CountryRef
		FOREIGN KEY (CountryID) REFERENCES Country_ID(CountryID)
			ON DELETE SET NULL		ON UPDATE CASCADE


);

CREATE TABLE Membership
(
  CustomerID      INTEGER,  -- FK to Customer table
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
  CustomerID      INTEGER,  -- FK to Customer table
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
  MovieID         INTEGER PRIMARY KEY,
  MovieName       varchar(50),
  ReleaseDate     Date,
  MovieDirector   varchar(50),
  ThemeID         INTEGER,  -- FK to Theme table

  CONSTRAINT ThemeID_MOV
		FOREIGN KEY (ThemeID) REFERENCES Theme(ThemeID)
			ON DELETE SET NULL		ON UPDATE CASCADE


);


CREATE TABLE Customer_History
(
  MovieID         INTEGER,  -- FK to Movie table
  DatePurchased   Date,
  ThemeID         INTEGER,  -- FK to Theme table
  Price           Real,

  CONSTRAINT MOVID_CustHist
		FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
			ON DELETE SET NULL		ON UPDATE CASCADE,


  CONSTRAINT ThemeID_CustHist
		FOREIGN KEY (ThemeID) REFERENCES Movie(ThemeID)
			ON DELETE SET NULL		ON UPDATE CASCADE


);

CREATE TABLE Theme
(
  ThemeID                 INTEGER PRIMARY KEY,
  ThemeName               varchar(50)

);

CREATE TABLE State_ID
(
  StateID                 INTEGER PRIMARY KEY,
  StateName               varchar(50),
  StateAbbreviation       varchar(2)

);

CREATE TABLE Country_ID
(
  CountryID         INTEGER PRIMARY KEY,
  CountryName       varchar(50)

);
