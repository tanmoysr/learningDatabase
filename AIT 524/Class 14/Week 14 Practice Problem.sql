-- AIT 524 Week 14
--TANMOY CHOWDHURY
--G01025893
--Practice Problem: 

--Problem 01
CREATE VIEW CONTACT 
AS 
SELECT name, phone FROM publisher;
--TANMOY CHOWDHURY

--Problem 02
CREATE OR REPLACE VIEW CONTACT
AS 
SELECT name, phone FROM publisher
WITH READ ONLY;
--TANMOY CHOWDHURY

--Problem 03
CREATE FORCE VIEW HOMEWORK13
AS SELECT COL1, COL2 FROM FIRSTATTEMPT;
--TANMOY CHOWDHURY

--Problem 04
DESC HOMEWORK13;
--TANMOY CHOWDHURY

--Problem 05
CREATE VIEW REORDERINFO
AS SELECT isbn, title, contact, phone
FROM books 
JOIN publisher USING (pubid);
--TANMOY CHOWDHURY

--Problem 06
UPDATE REORDERINFO
SET contact = 'TANMOY CHOWDHURY'
WHERE contact = 'DAVID DAVISON';
--TANMOY CHOWDHURY

--Problem 07
UPDATE REORDERINFO
SET isbn = '9876543214'
WHERE title = 'BIG BEAR AND LITTLE LOVE';
--TANMOY CHOWDHURY

--Problem 08
DELETE FROM REORDERINFO
WHERE contact = 'DAVID DAVISON';
--TANMOY CHOWDHURY

--Problem 09
ROLLBACK;
--TANMOY CHOWDHURY

--Problem 10
DROP VIEW REORDERINFO;
--TANMOY CHOWDHURY
