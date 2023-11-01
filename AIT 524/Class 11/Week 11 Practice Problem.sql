-- AIT 524 Week 11
--Practice Problem

--Problem 1
Select C.LastName, C.FirstName, O.Order#, O.ShipDate, O.ShipStreet
from customers C, orders O
where C.CUSTOMER# = O.CUSTOMER#;

--Problem 2
Select C.LastName, C.FirstName, O.Order#, O.ShipDate, O.ShipStreet
from customers C, orders O;

--Problem 3
Select B.ISBN, B.title, A.Fname, A.Lname, B.cost
from Books B 
JOIN BookAuthor BA ON B.ISBN = BA.ISBN
JOIN Author A ON A.AuthorID =  BA.AuthorID
Where B.cost > 30;

--Problem 4
Select C.FirstName, C.LastName, O.SHIPCOST, OI.PAIDEACH, OI.QUANTITY
from Customers C 
JOIN Orders O USING(Customer#)
JOIN OrderItems OI USING(ORDER#)
WHERE OI.PAIDEACH > 30 AND SHIPCOST < 5;


--Problem 5
Select *
from Customers C
JOIN Orders O ON O.Customer# = C.Customer#
Where ShipState = 'GA';


Select *
from Customers C
JOIN Orders O USING(Customer#)
Where ShipState = 'GA';

--Problem 6
Select C.LastName, C.FirstName, c.Address, O.SHIPSTREET, B.Title, A.FNAME, A.LNAME
from Customers C
JOIN Orders O ON O.Customer# = C.Customer#
JOIN ORDERITEMS OI ON O.Order# = OI.Order#
JOIN BOOKS B ON B.ISBN = OI.ISBN
JOIN BOOKAUTHOR BA ON BA.ISBN = B.ISBN
JOIN Author A ON A.AuthorID = BA.AUTHORID
WHERE c.Address != o.ShipStreet
AND B.Title like '%A%' AND A.LName IN ('PETERSON','ADAMS','AUSTIN');

-- Alternate Method for Problem 6
Select C.LastName, C.FirstName, c.Address, O.SHIPSTREET, B.Title, A.FNAME, A.LNAME
from Customers C, Orders O, OrderItems OI, Books B, BookAuthor BA, Author A
WHERE O.Customer# = C.Customer# AND O.Order# = OI.Order# AND B.ISBN = OI.ISBN AND A.AuthorID = BA.AUTHORID and
c.Address != o.ShipStreet
AND B.Title like '%A%' AND A.LName IN ('PETERSON','ADAMS','AUSTIN');

--Problem 7

Select M.Fname as "Manager First Name" , M.Lname as "Manager Last Name", E.FName as "Employee First Name", E.LName as "Employee Last Name"
from employees M 
JOIN employees E ON E.MGR = M.EMPNO;

-- Problem 8
Select c.lastname || ' ' || c.firstname as "Customer Name", r.lastname || ' ' || r.firstname as "Reffered by"
from Customers c 
JOIN Customers r ON c.customer# = r.referred;

-- Problem 9
SELECT b.title, o.order#, c.state
FROM Books b,Customers c, Orders o, Orderitems oi
WHERE b.isbn = oi.isbn 
AND c.customer# = o.customer#
AND oi.order# = o.order#;


-- Problem 10

--An sql query to get the order# of orders without discount and with discount
--Use the same query for UNION, UNION ALL, INTERSECT and MINUS

SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NULL
UNION
SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NOT NULL;

SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NULL
UNION ALL
SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NOT NULL;

SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NULL
INTERSECT
SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NOT NULL;

SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NULL
MINUS
SELECT oi.order#, discount FROM Orderitems oi
JOIN Books b USING (ISBN)
WHERE discount IS NOT NULL;