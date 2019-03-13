
-- Sample Queries




-- Customer List

SELECT NameF, NameL, 
FROM Customer;


-- Customer Current Balance

SELECT C.NameF, C.NameL, C.CurrentBalance
FROM Billing AS B, Customer AS C
WHERE B.CustomerID = C.CustomerID;


-- Movie List by ThemeID

SELECT M.MovieName, M.MovieDirector, M.Release Date, T.Theme
FROM Movie AS M, Theme AS T
WHERE B.CustomerID 
GROUP BY ThemeID;

