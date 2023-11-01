-- AIT 524 Week 11 
--Assignment 10
--TANMOY CHOWDHURY
--G01025893

--Problem 1
--Write a SQL code to join two tables using the WHERE statement.
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID
from PLAYER P, PLAYERCAT PC
where P.PLAYER_ID = PC.PLAYER_ID;

--Problem 2
--Repeat problem 1 using the JOIN … USING keywords.
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID
from PLAYER P JOIN PLAYERCAT PC
USING (PLAYER_ID);

--Problem 3
--Repeat problem 1 using the JOIN … ON keywords.
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID
from PLAYER P JOIN PLAYERCAT PC
ON P.PLAYER_ID = PC.PLAYER_ID;

--Problem 4
--Repeat problem 1 but add at least two conditions in the WHERE statement
--and use an arithmetic and a special operator. 
--Use logical operators to combine multiple conditions. 
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID
from PLAYER P, PLAYERCAT PC
where P.PLAYER_ID = PC.PLAYER_ID AND (P.AGE/2)>12 AND FIRST_NAME LIKE 'M%';

--Problem 5
--Repeat problem 2 but add two more conditions in the WHERE statement 
--and use an arithmetic and a special operator 
--which are different from the ones you used in the previous query. 
--Use logical operators to combine multiple conditions. 
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID
from PLAYER P JOIN PLAYERCAT PC
USING (PLAYER_ID)
WHERE (P.AGE/2)=12 OR (P.AGE/2)<12 AND P.FIRST_NAME LIKE 'X%';

--Problem 6~9
--Repeat problems 1-4 above to join three tables.

--Problem 6
--Write a SQL code to join two tables using the WHERE statement.
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID, CD.DRILL_ID
from PLAYER P, PLAYERCAT PC, CAT_DRILL CD
where P.PLAYER_ID = PC.PLAYER_ID and PC.CATEGORY_ID = CD.CATEGORY_ID;

--Problem 7
--Repeat problem 1 using the JOIN … USING keywords.
Select FIRST_NAME, AGE, CATEGORY_ID, DRILL_ID
from PLAYER JOIN 
(PLAYERCAT JOIN CAT_DRILL USING (CATEGORY_ID))
USING (PLAYER_ID);

--Problem 8
--Repeat problem 1 using the JOIN … ON keywords.
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID, CD.DRILL_ID
from PLAYER P 
JOIN PLAYERCAT PC ON P.PLAYER_ID = PC.PLAYER_ID
JOIN CAT_DRILL CD ON PC.CATEGORY_ID = CD.CATEGORY_ID;

--Problem 9
--Repeat problem 1 but add at least two conditions in the WHERE statement
--and use an arithmetic and a special operator. 
--Use logical operators to combine multiple conditions. 
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID, CD.DRILL_ID
from PLAYER P, PLAYERCAT PC, CAT_DRILL CD 
where P.PLAYER_ID = PC.PLAYER_ID and PC.CATEGORY_ID = CD.CATEGORY_ID 
AND (P.AGE/2)>12 AND FIRST_NAME LIKE 'M%';

-- Problem 10
--Write a SQL query that joins four tables using any type of join 
--and uses both an arithmetic and special operator. 
Select P.FIRST_NAME, P.AGE, PC.CATEGORY_ID, CD.DRILL_ID, D.DRILL_TYPE
from PLAYER P
JOIN PLAYERCAT PC ON P.PLAYER_ID = PC.PLAYER_ID
JOIN CAT_DRILL CD ON PC.CATEGORY_ID = CD.CATEGORY_ID 
JOIN DRILL D ON CD.DRILL_ID = D.DRILL_ID
WHERE (P.AGE/2)=12 OR (P.AGE/2)<13 AND FIRST_NAME LIKE 'R%';
