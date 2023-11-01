-- AIT 524 Week 10 
--Practice Problem - Basic DML

-- 1. 
CREATE TABLE TANMOY_CHOWDHURY(
PersonID int,
LastName VARCHAR2(12),
FirstName VARCHAR2(12),
StreetAddress  CHAR (25),
SALARY NUMBER(10),
DateOfBirth DATE DEFAULT SYSDATE);

DESC TANMOY_CHOWDHURY;

-- 2. 
INSERT INTO TANMOY_CHOWDHURY 
VALUES (0602, 'CHOWDHURY', 'TANMOY', 'WEBLEY CT', '6000', '01-MAY-2001'); 

SELECT * FROM TANMOY_CHOWDHURY;

-- 3. 
INSERT INTO TANMOY_CHOWDHURY (PersonID, LastName, FirstName, StreetAddress , Salary, DateOfBirth)
VALUES (0603, 'Iganibo', 'Ibifubara', 'P.O. BOX 2203', '4655', TO_DATE('30-JUN-95','DD-MON-YY')); 

SELECT * FROM TANMOY_CHOWDHURY;

-- 4. 
UPDATE TANMOY_CHOWDHURY
SET DateOfBirth = '01-MAY-90',
SALARY = 9000,
StreetAddress  = '9789 WEBLEY CT'
WHERE LastName = 'Iganibo';

SELECT * FROM TANMOY_CHOWDHURY;

-- 5. 
DELETE FROM TANMOY_CHOWDHURY
WHERE PersonID = 0602;

SELECT * FROM TANMOY_CHOWDHURY;

-- 6. 
COMMIT;

SELECT * FROM TANMOY_CHOWDHURY;

-- 7. 
ROLLBACK;

SELECT * FROM TANMOY_CHOWDHURY;

-- 8. 
DROP TABLE TANMOY_CHOWDHURY;


-- Practice Problem - Creating Complex Conditions

-- 1. 
SELECT Title, PubDate, PubID
FROM Books
WHERE Cost > 10.0;

-- 2. 
SELECT PubID, Name, Contact
FROM Publisher
WHERE PubID BETWEEN 2 AND 5;

-- 3. 
SELECT Order#, Customer#, OrderDate, ShipDate
FROM Orders
WHERE Order# IN(1000, 1005, 1006, 1007);

-- 4. 
SELECT ShipDate, ShipStreet, ShipState, ShipZip
FROM Orders
WHERE ShipState LIKE 'I%';

-- 5. 
SELECT ISBN, Title, PubDate
FROM Books
WHERE Discount IS NULL;

-- 6. 
SELECT * FROM Customers
WHERE (State = 'N' OR Zip = 83707)
AND Referred IS NULL;

-- 7. 
SELECT Order#, item#, ISBN, Quantity
FROM OrderItems
WHERE Quantity > 1 OR PaidEach < 80
AND ISBN IN ('8843172113', '3437212490', '2491748320', '0401140733')
ORDER BY Order#;



