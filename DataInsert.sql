
--Insert Test Data into Database


-- Customer Table

INSERT INTO Customer
  ( NameF, NameL, AddressLine1, AddressLine2, City, Zipcode, StateID, CountryID )
VALUES
  ( 'John', 'Smith', '123 Long Way', '', 'Nashville', '37011', '42', '188' );


-- Membership Table

INSERT INTO Customer
  ( CustomerID, ThemeID, StartDate, EndDate, PricePYR, PricePMO )
VALUES
  ( '1', '1', '1', '1', '1.08', '15' );

-- Billing Table

INSERT INTO Billing
  ( CustomerID, PaymentMethod, BillingCycle, PaymentStatus, CurrentBalance )
VALUES
  ( '1', 'VISA', '30', 'Active', '1.08' );



-- Movie Table

INSERT INTO Movie
  ( MovieName, ReleaseDate, MovieDirector, ThemeID )
VALUES
  ( 'VHS', '', 'Dr. Thomas', '1' );


-- Theme Table

INSERT INTO Theme
  ( ThemeName )
VALUES
  ( 'Absurdist/surreal/whimsical'),
  ( 'Action'),
  ( 'Adventure'),
  ( 'Comedy'),
  ( 'Crime'),
  ( 'Drama'),
  ( 'Fantasy'),
  ( 'Historical'),
  ( 'Historical fiction'),
  ( 'Horror'),
  ( 'Magical realism'),
  ( 'Mystery'),
  ( 'Paranoid Fiction'),
  ( 'Philosophical'),
  ( 'Political'),
  ( 'Romance'),
  ( 'Saga'),
  ( 'Satire'),
  ( 'Science fiction'),
  ( 'Social'),
  ( 'Speculative'),
  ( 'Thriller'),
  ( 'Urban'),
  ( 'Western'),
  ( 'Animation');



-- Customer_History Table

INSERT INTO Customer_History
  ( CustomerID, MovieID, DatePurchased, ThemeID, Price )
VALUES
  ( '1', '1', '', '1', '1.08');




  -- STATE Table

INSERT INTO State
  (  StateName, StateAbbreviation )
VALUES
  ('Alabama', 'AL'),
  ('Alaska', 'AK'),
  ('Arizona', 'AZ'),
  ('Arkansas', 'AR'),
  ('California', 'CA'),
  ('Colorado', 'CO'),
  ('Connecticut', 'CT'),
  ('Delaware', 'DE'),
  ('Florida', 'FL'),
  ('Georgia', 'GA'),
  ('Hawaii', 'HI'),
  ('Idaho', 'ID'),
  ('Illinois', 'IL'),
  ('Indiana', 'IN'),
  ('Iowa', 'IA'),
  ('Kansas', 'KS'),
  ('Kentucky', 'KY'),
  ('Louisiana', 'LA'),
  ('Maine', 'ME'),
  ('Maryland', 'MD'),
  ('Massachusetts', 'MA'),
  ('Michigan', 'MI'),
  ('Minnesota', 'MN'),
  ('Mississippi', 'MS'),
  ('Missouri', 'MO'),
  ('Montana', 'MT'),
  ('Nebraska', 'NE'),
  ('Nevada', 'NV'),
  ('New Hampshire', 'NH'),
  ('New Jersey', 'NJ'),
  ('New Mexico', 'NM'),
  ('New York', 'NY'),
  ('North Carolina', 'NC'),
  ('North Dakota', 'ND'),
  ('Ohio', 'OH'),
  ('Oklahoma', 'OK'),
  ('Oregon', 'OR'),
  ('Pennsylvania', 'PA'),
  ('Rhode Island', 'RI'),
  ('South Carolina', 'SC'),
  ('South Dakota', 'SD'),
  ('Tennessee', 'TN'),
  ('Texas', 'TX'),
  ('Utah', 'UT'),
  ('Vermont', 'VT'),
  ('Virginia', 'VA'),
  ('Washington', 'WA'),
  ('West Virginia', 'WV'),
  ('Wisconsin', 'WI'),
  ('Wyoming', 'WY');


  -- Country Table


INSERT INTO Country
  (  CountryName )
VALUES
  ('Afghanistan'),
  ('Albania'),
  ('Algeria'),
  ('Andorra'),
  ('Angola'),
  ('Anguilla'),
  ('Antigua & Barbuda'),
  ('Argentina'),
  ('Armenia'),
  ('Australia'),
  ('Austria'),
  ('Azerbaijan'),
  ('Bahamas'),
  ('Bahrain'),
  ('Bangladesh'),
  ('Barbados'),
  ('Belarus'),
  ('Belgium'),
  ('Belize'),
  ('Benin'),
  ('Bermuda'),
  ('Bhutan'),
  ('Bolivia'),
  ('Bosnia & Herzegovina'),
  ('Botswana'),
  ('Brazil'),
  ('Brunei Darussalam'),
  ('Bulgaria'),
  ('Burkina Faso'),
  ('Burundi'),
  ('Cambodia'),
  ('Cameroon'),
  ('Canada'),
  ('Cape Verde'),
  ('Cayman Islands'),
  ('Central African Republic'),
  ('Chad'),
  ('Chile'),
  ('China'),
  ('China - Hong Kong / Macau'),
  ('Colombia'),
  ('Comoros'),
  ('Congo'),
  ('Congo, Democratic Republic of (DRC)'),
  ('Costa Rica'),
  ('Croatia'),
  ('Cuba'),
  ('Cyprus'),
  ('Czech Republic'),
  ('Denmark'),
  ('Djibouti'),
  ('Dominica'),
  ('Dominican Republic'),
  ('Ecuador'),
  ('Egypt'),
  ('El Salvador'),
  ('Equatorial Guinea'),
  ('Eritrea'),
  ('Estonia'),
  ('Ethiopia'),
  ('Fiji'),
  ('Finland'),
  ('France'),
  ('French Guiana'),
  ('Gabon'),
  ('Gambia'),
  ('Georgia'),
  ('Germany'),
  ('Ghana'),
  ('Great Britain'),
  ('Greece'),
  ('Grenada'),
  ('Guadeloupe'),
  ('Guatemala'),
  ('Guinea'),
  ('Guinea-Bissau'),
  ('Guyana'),
  ('Haiti'),
  ('Honduras'),
  ('Hungary'),
  ('Iceland'),
  ('India'),
  ('Indonesia'),
  ('Iran'),
  ('Iraq'),
  ('Israel'),
  ('Italy'),
  ("Ivory Coast (Cote d'Ivoire)"),
  ('Jamaica'),
  ('Japan'),
  ('Jordan'),
  ('Kazakhstan'),
  ('Kenya'),
  ('Korea, Democratic Republic of (North Korea)'),
  ('Korea, Republic of (South Korea)'),
  ('Kosovo'),
  ('Kuwait'),
  ('Kyrgyz Republic (Kyrgyzstan)'),
  ('Laos'),
  ('Latvia'),
  ('Lebanon'),
  ('Lesotho'),
  ('Liberia'),
  ('Libya'),
  ('Liechtenstein'),
  ('Lithuania'),
  ('Luxembourg'),
  ('Madagascar'),
  ('Malawi'),
  ('Malaysia'),
  ('Maldives'),
  ('Mali'),
  ('Malta'),
  ('Martinique'),
  ('Mauritania'),
  ('Mauritius'),
  ('Mayotte'),
  ('Mexico'),
  ('Moldova, Republic of'),
  ('Monaco'),
  ('Mongolia'),
  ('Montenegro'),
  ('Montserrat'),
  ('Morocco'),
  ('Mozambique'),
  ('Myanmar/Burma'),
  ('Namibia'),
  ('Nepal'),
  ('New Zealand'),
  ('Nicaragua'),
  ('Niger'),
  ('Nigeria'),
  ('North Macedonia, Republic of'),
  ('Norway'),
  ('Oman'),
  ('Pacific Islands'),
  ('Pakistan'),
  ('Panama'),
  ('Papua New Guinea'),
  ('Paraguay'),
  ('Peru'),
  ('Philippines'),
  ('Poland'),
  ('Portugal'),
  ('Puerto Rico'),
  ('Qatar'),
  ('Reunion'),
  ('Romania'),
  ('Russian Federation'),
  ('Rwanda'),
  ('Saint Kitts and Nevis'),
  ('Saint Lucia'),
  ('Saint Vincent and the Grenadines'),
  ('Samoa'),
  ('Sao Tome and Principe'),
  ('Saudi Arabia'),
  ('Senegal'),
  ('Serbia'),
  ('Seychelles'),
  ('Sierra Leone'),
  ('Singapore'),
  ('Slovak Republic (Slovakia)'),
  ('Slovenia'),
  ('Solomon Islands'),
  ('Somalia'),
  ('South Africa'),
  ('South Sudan'),
  ('Spain'),
  ('Sri Lanka'),
  ('Sudan'),
  ('Suriname'),
  ('Swaziland'),
  ('Sweden'),
  ('Switzerland'),
  ('Syria'),
  ('Tajikistan'),
  ('Tanzania'),
  ('Thailand'),
  ('Netherlands'),
  ('Timor Leste'),
  ('Togo'),
  ('Trinidad & Tobago'),
  ('Tunisia'),
  ('Turkey'),
  ('Turkmenistan'),
  ('Turks & Caicos Islands'),
  ('Uganda'),
  ('Ukraine'),
  ('United Arab Emirates'),
  ('United States of America (USA)'),
  ('Uruguay'),
  ('Uzbekistan'),
  ('Venezuela'),
  ('Vietnam'),
  ('Virgin Islands (UK)'),
  ('Virgin Islands (US)'),
  ('Yemen'),
  ('Zambia'),
  ('Zimbabwe');