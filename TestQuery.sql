
-- Sample Queries


-- Customer List

SELECT NameF, NameL 
FROM Customer;


-- Customer Current Balance

SELECT C.NameF, C.NameL, B.CurrentBalance
FROM Billing AS B, Customer AS C
WHERE B.CustomerID = C.CustomerID;

-- Customer Current Balance Greater than $10

SELECT C.NameF, C.NameL, B.CurrentBalance
FROM Billing AS B, Customer AS C
WHERE B.CustomerID = C.CustomerID
    AND B.CurrentBalance > 10;

 -- Customer Current Balance Less than $1

SELECT C.NameF, C.NameL, B.CurrentBalance
FROM Billing AS B, Customer AS C
WHERE B.CustomerID = C.CustomerID
    AND B.CurrentBalance < 1;


-- Movie List by ThemeID = 1

SELECT  T.ThemeName, M.MovieName, M.MovieDirector, M.ReleaseDate
FROM Movie AS M, Theme AS T
WHERE T.ThemeID = '1';

