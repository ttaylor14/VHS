CREATE DATABASE VHS;

--More things updated here in this SQL file.
--Quite the structured language.

CREATE TABLE Customer
(
  CustomerID      INTEGER,
  NameF           TEXT,
  NameL           TEXT,
  Address         TEXT
);

--Updated124

CREATE TABLE Membership
(
  CustomerID      INTEGER,
  ThemeID         INTEGER,
  StartDate       TEXT,
  EndDate         TEXT,
  PricePYR        REAL,
  PricePMO        REAL
);

CREATE TABLE Billing
(
  CustomerID      INTEGER,
  PaymentMethod   TEXT,
  BillingCycle    TEXT,
  PaymentStatus   TEXT,
  CurrentBalance  REAL,

);

CREATE TABLE Movie
(
  MovieID         INTEGER,
  MovieName       TEXT,
  ReleaseDate     Date,
  MovieDirector   TEXT
);


CREATE TABLE Customer_History
(
  MovieID         INTEGER
  DatePurchased   Date,
  ThemeID         INTEGER,
  Price           Real
);