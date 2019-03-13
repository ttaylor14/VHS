
-- Sample Queries


-- Customer List

SELECT NameF, NameL 
FROM Customer;


-- Customer Current Balance

SELECT C.NameF, C.NameL, B.CurrentBalance
FROM Billing AS B, Customer AS C
WHERE B.CustomerID = C.CustomerID;


-- Movie List by ThemeID = 1

SELECT  T.ThemeName, M.MovieName, M.MovieDirector, M.ReleaseDate
FROM Movie AS M, Theme AS T
WHERE T.ThemeID = '1';

