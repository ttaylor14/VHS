
-- Qualiy Assurance Testing


-- Attempting to insert incorrect information into the database


-- Customer Table

INSERT INTO Customer
  ( NameF, NameL, AddressLine1, AddressLine2, City, Zipcode, StateID, CountryID )
VALUES
  ( 'John', 'Smith', '123 Long Way', '', 'Nashville', '37011', '42', '188', '' ), -- Extra Attribute
  ( 'John', 'Smith', '123 Long Way', '', 'Nashville', '37011', '42' ), -- One Less Attribute
  ( 'John', 'Smith', '123 Long Way', '', 'Nashville', 'HELLO', '42', '188' ), -- CHAR IN INT ONLY - ZIPCODE
  ( 'John', 'Smith', '123 Long Way', '', 'Nashville', '37011', 'TN', '188' ), -- CHAR IN INT ONLY - State_ID
  ( 'John', 'Smith', '123 Long Way', '', 'Nashville', '37011', '42', 'USA' ), -- CHAR IN INT ONLY - Country_ID
  ( 123, 'Smith', '123 Long Way', '', 'Nashville', '37011', '42', '188' ), -- INT IN CHAR ONLY - NameF
  ( 'John', 123, '123 Long Way', '', 'Nashville', '37011', '42', '188' ), -- INT IN CHAR ONLY - NameL
  ( 'John', 'Smith', 123, '', 'Nashville', '37011', '42', '188' ), -- INT IN CHAR ONLY - AddressLine1
  ( 'John', 'Smith', '123 Long Way', 123, 'Nashville', '37011', '42', '188' ), -- INT IN CHAR ONLY - AddressLine2
  ( 'John', 'Smith', '123 Long Way', '', 123, '37011', '42', '188' ); -- INT IN CHAR ONLY - City


-- Membership Table

INSERT INTO Customer
  ( CustomerID, ThemeID, StartDate, EndDate, PricePYR, PricePMO )
VALUES
    ( '1', '1', '1', '1', '1.08', '15', ''  ), -- Extra Attribute
    ( '1', '1', '1', '1', '1.08'  ), -- One Less Attribute
    ( 'A', '1', '1', '1', '1.08', '15'  ), -- CHAR IN INT ONLY - CustomerID
    ( '1', 'A', '1', '1', '1.08', '15'  ), -- CHAR IN INT ONLY - ThemeID
    ( '1', '1', '1', '1', 'TOUGH', '15'  ), -- CHAR IN INT ONLY - PricePYR
    ( '1', '1', '1', '1', '1.08', 'A'  ); -- CHAR IN INT ONLY - PricePMO

-- Billing Table

INSERT INTO Billing
  ( CustomerID, PaymentMethod, BillingCycle, PaymentStatus, CurrentBalance )
VALUES
  ( '1', 'VISA', '30', 'Active', '1.08', ''  ), -- Extra Attribute
  ( '1', 'VISA', '30', 'Active'  ), -- One Less Attribute
  ( '1', 'VISA', '30', 'Active', 'Out'  ), -- CHAR IN INT ONLY - CurrentBalance
  ( 'A', 'VISA', '30', 'Active', '1.08'  ); -- CHAR IN INT ONLY - CustmoerID



-- Movie Table

INSERT INTO Movie
  ( MovieName, ReleaseDate, MovieDirector, ThemeID )
VALUES
  ( 'VHS', '', 'Dr. Thomas', '1', ''  ), -- Extra Attribute
  ( 'VHS', '', 'Dr. Thomas'  ), -- One Less Attribute
  ( 'VHS', '', 'Dr. Thomas', 'A'  ), -- CHAR IN INT ONLY - ThemeID
  ( 123, '', 'Dr. Thomas', '1'  ), -- INT IN CHAR ONLY - MovieName
  ( 'VHS', '', 123, '1'  ); -- INT IN CHAR ONLY - MovieDirector


-- Theme Table

INSERT INTO Theme
  ( ThemeName )
VALUES
  ( 'Absurdist/surreal/whimsical', '' ), -- Extra Attribute
  (  ), -- One Less Attribute
  ( 1234 ); -- INT IN CHAR ONLY - ThemeName



-- Customer_History Table

INSERT INTO Customer_History
  ( CustomerID, MovieID, DatePurchased, ThemeID, Price )
VALUES
  ( '1', '1', '', '1', '1.08', '' ), -- Extra Attribute
  ( '1', '1', '', '1' ), -- One Less Attribute
  ( '1', '1', '', '1', 'TOO' ), -- CHAR IN INT ONLY - Price
  ( '1', '1', '', 'A', '1.08' ), -- CHAR IN INT ONLY - ThemeID
  ( '1', 'B', '', '1', '1.08' ), -- CHAR IN INT ONLY - MovieID
  ( 'C', '1', '', '1', '1.08' ); -- CHAR IN INT ONLY - CUstomerID




  -- STATE Table

INSERT INTO State
  (  StateName, StateAbbreviation )
VALUES
  ('Alabama', 'AL', '' ), -- Extra Attribute
  ('Alabama' ), -- One Less Attribute
  (1234, 'AL' ), -- INT IN CHAR ONLY - StateName
  ('Alabama', 12 ); -- INT IN CHAR ONLY - StateAbbreviation
  


  -- Country Table


INSERT INTO Country
  (  CountryName )
VALUES
  ('Afghanistan', '' ), -- Extra Attribute
  ( ), -- One Less Attribute
  (1234 ); -- INT IN CHAR ONLY - CountryName
  