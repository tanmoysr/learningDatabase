-- AIT 524 Week 13
--TANMOY CHOWDHURY
--G01025893
--Practice Problem: 
-- URL: https://quizlet.com/30148795/sql-exam-2-flash-cards/

--Problem 01
SELECT CATEGORY, TITLE, RETAIL
FROM BOOKS
WHERE RETAIL< (SELECT AVG(RETAIL)
FROM BOOKS);
--TANMOY CHOWDHURY

--Problem 02
--Determine which books cost less than the average cost of other books in the same category..
SELECT a.title, b.category, a.cost
FROM books a, (SELECT category, AVG(cost) averagecost
FROM books
GROUP BY category) b
WHERE a.category = b.category
AND a.cost < b.averagecost;
--TANMOY CHOWDHURY

--Problem 03
SELECT ORDER#
FROM ORDERS
WHERE SHIPSTATE = (SELECT SHIPSTATE
FROM ORDERS
WHERE ORDER# = 1014);
--TANMOY CHOWDHURY

--Problem 04
--Determine which orders had a higher total amount due than order 1008 
SELECT ORDER#, SUM(QUANTITY*PAIDEACH)
FROM ORDERITEMS
HAVING SUM(QUANTITY*PAIDEACH)>ALL(SELECT SUM(QUANTITY*PAIDEACH)
FROM ORDERITEMS
WHERE ORDER# = 1008
GROUP BY ORDER#)
GROUP BY ORDER#;
--TANMOY CHOWDHURY

--Problem 05
--Determine which author or authors wrote the books most frequently purchased by customers of JustLee Books. 
SELECT lname, fname
FROM bookauthor 
JOIN author USING(authorid)
WHERE isbn IN(SELECT isbn
FROM orderitems
GROUP BY isbn
HAVING SUM(quantity) =(SELECT MAX(COUNT(*))
FROM orderitems
GROUP BY isbn));
--TANMOY CHOWDHURY

--Problem 06
--List the title of all books in the same category as books previously purchased by customer 1007. 
--Don’t include books this customer has already purchased.
SELECT title
FROM books
WHERE category IN
(SELECT DISTINCT category
FROM books JOIN orderitems USING(isbn)
JOIN orders USING(order#)
WHERE customer# = 1007)
AND isbn NOT IN
(SELECT isbn
FROM orders JOIN orderitems USING(order#)
WHERE customer# = 1007);
--TANMOY CHOWDHURY

--Problem 07
SELECT shipcity, shipstate
FROM orders
WHERE shipdate-orderdate =
(SELECT MAX(shipdate-orderdate)
FROM orders);
--TANMOY CHOWDHURY

--Problem 08
SELECT customer#
FROM customers 
JOIN orders USING(customer#) 
JOIN orderitems USING(order#) 
JOIN books USING(isbn)
WHERE retail = 
(SELECT MIN(retail)
FROM books);
--TANMOY CHOWDHURY

--Problem 09
--Determine the number of different customers who have placed an order for books written or
--cowritten by James Austin. 
SELECT COUNT(DISTINCT customer#)
FROM orders JOIN orderitems USING(order#)
WHERE isbn IN
(SELECT isbn
FROM orderitems JOIN bookauthor USING(isbn) 
JOIN author USING(authorid)
WHERE lname= 'AUSTIN'
AND fname = 'JAMES');
--TANMOY CHOWDHURY

--Problem 10
SELECT title
FROM books
WHERE pubid =
(SELECT pubid 
FROM books
WHERE title = 'THE WOK WAY TO COOK');
--TANMOY CHOWDHURY
