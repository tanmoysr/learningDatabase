--

--Determine which books cost less than the average cost
-- of other books in the same category..
SELECT a.title, b.category, a.cost
FROM books a, (SELECT category, AVG(cost) averagecost
FROM books
GROUP BY category) b
WHERE a.category = b.category
AND a.cost < b.averagecost;
--Determine which orders had a higher total amount due than order 1008 
SELECT ORDER#, SUM(QUANTITY*PAIDEACH)
FROM ORDERITEMS
HAVING SUM(QUANTITY*PAIDEACH)>ALL(SELECT SUM(QUANTITY*PAIDEACH)
FROM ORDERITEMS
WHERE ORDER# = 1008
GROUP BY ORDER#)
GROUP BY ORDER#;
--Determine which author or authors wrote the books most frequently 
--purchased by customers of JustLee Books. 
SELECT lname, fname
FROM bookauthor 
JOIN author USING(authorid)
WHERE isbn IN(SELECT isbn
FROM orderitems
GROUP BY isbn
HAVING SUM(quantity) =(SELECT MAX(COUNT(*))
FROM orderitems
--List the title of all books in the same category as 
--books previously purchased by customer 1007. 
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
--Determine the number of different customers who have 
--placed an order for books written or
--cowritten by James Austin. 
SELECT COUNT(DISTINCT customer#)
FROM orders JOIN orderitems USING(order#)
WHERE isbn IN
(SELECT isbn
FROM orderitems JOIN bookauthor USING(isbn) 
JOIN author USING(authorid)
WHERE lname= 'AUSTIN'
AND fname = 'JAMES');
--Problem 03
CREATE FORCE VIEW HOMEWORK13
AS SELECT COL1, COL2 FROM FIRSTATTEMPT;