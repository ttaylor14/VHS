CREATE TABLE Customer
(
  CustomerID    INTEGER,
  NameF         TEXT,
  NameL         TEXT
);

CREATE TABLE Membership
(
  CustomerID    INTEGER,
  ThemeID       INTEGER,
  StartDate         TEXT,
  EndDate         TEXT
);
