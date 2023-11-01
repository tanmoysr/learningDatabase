-- AIT 524 Week 10 
--Assignment 09
--TANMOY CHOWDHURY
--SAMPLE COMMAND
INSERT INTO PLAYER 
VALUES (0602, 'CHOWDHURY', 'TANMOY', 'tanmoy@gmail.com', 22); 

INSERT INTO PLAYER (PLAYER_ID, FIRST_NAME, LAST_NAME, EMAIL) 
VALUES (0602, 'CHOWDHURY', 'TANMOY', 'tanmoy@gmail.com')
-- Need to mention the column name if we want to skip putting data in some column.
-- In previous command we skip the age.
DELETE ALL FROM PLAYER
WHERE PLAYER_ID=0602;
DELETE FROM PLAYER;
commit;
SELECT * FROM PLAYER;
DESC PLAYER;

-- All the upper command is the sample command
-- In the later portion, contains those commands which were used for data entry in tables.
---------------------------------------------
INSERT INTO PLAYER 
VALUES (0604, 'Hassan', 'Nadir', 'nadir@gmail.com', 20); 

INSERT INTO PLAYER 
VALUES (0605, 'Spencer ', 'Woodfork', 'woodfork@yahoo.com', 19); 

INSERT INTO PLAYER 
VALUES (0602, 'TANMOY', 'CHOWDHURY', 'tanmoy@gmail.com', 23); 

INSERT INTO PLAYER 
VALUES (0603, 'Ibifubara', 'Iganibo', 'fuby@yahoo.com', 25); 

INSERT INTO PLAYER 
VALUES (0612, 'Rafeef', 'Baamer', 'rafeef@gmail.com', 21); 

INSERT INTO PLAYER 
VALUES (0613, 'Manvitha', 'Reddy', 'reddy@yahoo.com', 26);  

INSERT INTO PLAYER 
VALUES (0606, 'Kaumudi', 'Sagi', 'kaumudi@gmail.com', 20); 

INSERT INTO PLAYER 
VALUES (0607, 'Nasser  ', 'Alaska', 'alaska@yahoo.com', 19); 

INSERT INTO PLAYER 
VALUES (0608, 'Shreyasi', 'Thota', 'shreyasi@gmail.com', 23); 

INSERT INTO PLAYER 
VALUES (0609, 'Ankita', 'Dawar', 'dawar@yahoo.com', 25); 

INSERT INTO PLAYER 
VALUES (0610, 'Adam', 'Chaudry', 'adam@gmail.com', 23); 

INSERT INTO PLAYER 
VALUES (0611, 'Akhil', 'Nibber', 'nibber@yahoo.com', 21); 

INSERT INTO PLAYER 
VALUES (0614, 'Vyshnavi', 'Ukkalam', 'vyshnavi@gmail.com', 19); 

INSERT INTO PLAYER 
VALUES (0615, 'Waliyat ', 'Olayiwola', 'olayiwola@yahoo.com', 22); 

INSERT INTO PLAYER 
VALUES (0616, 'Prayas', 'Timalsina', 'prayas@gmail.com', 23); 

INSERT INTO PLAYER 
VALUES (0617, 'Michael', 'Iganibo', 'fuby@yahoo.com', 25); 

INSERT INTO PLAYER 
VALUES (0618, 'Xin', 'Zhang', 'xin@gmail.com', 24); 

INSERT INTO PLAYER 
VALUES (0619, 'Karthik', 'Goud', 'goud@yahoo.com', 20); 

SELECT * FROM PLAYER;
DESC PLAYER;
--TANMOY CHOWDHURY
---------------------------------------------------------------------------------------
INSERT INTO GOALKEEPER 
VALUES (0604, 'Hassan', 'Nadir', 'nadir@gmail.com', 20, 'GOALKEEPER'); 

INSERT INTO GOALKEEPER 
VALUES (0605, 'Spencer ', 'Woodfork', 'woodfork@yahoo.com', 19, 'GOALKEEPER'); 

INSERT INTO GOALKEEPER 
VALUES (0602, 'TANMOY', 'CHOWDHURY', 'tanmoy@gmail.com', 23, 'GOALKEEPER'); 

INSERT INTO GOALKEEPER 
VALUES (0603, 'Ibifubara', 'Iganibo', 'fuby@yahoo.com', 25, 'GOALKEEPER'); 

INSERT INTO GOALKEEPER 
VALUES (0612, 'Rafeef', 'Baamer', 'rafeef@gmail.com', 21, 'GOALKEEPER'); 

INSERT INTO GOALKEEPER 
VALUES (0613, 'Manvitha', 'Reddy', 'reddy@yahoo.com', 26, 'GOALKEEPER'); 

SELECT * FROM GOALKEEPER;
DESC GOALKEEPER;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO GOALKEEPER_BEGINNER 
VALUES (0604, 'Hassan', 'Nadir', 'nadir@gmail.com', 20, 'GOALKEEPER', 'BEGINNER'); 

INSERT INTO GOALKEEPER_BEGINNER 
VALUES (0605, 'Spencer ', 'Woodfork', 'woodfork@yahoo.com', 19, 'GOALKEEPER', 'BEGINNER'); 

SELECT * FROM GOALKEEPER_BEGINNER;
DESC GOALKEEPER_BEGINNER;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO GOALKEEPER_INTERMEDIATE 
VALUES (0602, 'TANMOY', 'CHOWDHURY', 'tanmoy@gmail.com', 23, 'GOALKEEPER', 'INTERMEDIATE'); 

INSERT INTO GOALKEEPER_INTERMEDIATE 
VALUES (0603, 'Ibifubara', 'Iganibo', 'fuby@yahoo.com', 25, 'GOALKEEPER', 'INTERMEDIATE'); 

SELECT * FROM GOALKEEPER_INTERMEDIATE;
DESC GOALKEEPER_INTERMEDIATE;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO GOALKEEPER_EXPERT 
VALUES (0612, 'Rafeef', 'Baamer', 'rafeef@gmail.com', 21, 'GOALKEEPER', 'EXPERT'); 

INSERT INTO GOALKEEPER_EXPERT 
VALUES (0613, 'Manvitha', 'Reddy', 'reddy@yahoo.com', 26, 'GOALKEEPER', 'EXPERT'); 

SELECT * FROM GOALKEEPER_EXPERT;
DESC GOALKEEPER_EXPERT;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO DEFENSE 
VALUES (0606, 'Kaumudi', 'Sagi', 'kaumudi@gmail.com', 20, 'DEFENSE'); 

INSERT INTO DEFENSE 
VALUES (0607, 'Nasser  ', 'Alaska', 'alaska@yahoo.com', 19, 'DEFENSE'); 

INSERT INTO DEFENSE 
VALUES (0608, 'Shreyasi', 'Thota', 'shreyasi@gmail.com', 23, 'DEFENSE'); 

INSERT INTO DEFENSE 
VALUES (0609, 'Ankita', 'Dawar', 'dawar@yahoo.com', 25, 'DEFENSE'); 

INSERT INTO DEFENSE 
VALUES (0610, 'Adam', 'Chaudry', 'adam@gmail.com', 23, 'DEFENSE'); 

INSERT INTO DEFENSE 
VALUES (0611, 'Akhil', 'Nibber', 'nibber@yahoo.com', 21, 'DEFENSE'); 

SELECT * FROM DEFENSE;
DESC DEFENSE;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO DEFENSE_BEGINNER 
VALUES (0606, 'Kaumudi', 'Sagi', 'kaumudi@gmail.com', 20, 'DEFENSE', 'BEGINNER'); 

INSERT INTO DEFENSE_BEGINNER 
VALUES (0607, 'Nasser  ', 'Alaska', 'alaska@yahoo.com', 19, 'DEFENSE', 'BEGINNER'); 

SELECT * FROM DEFENSE_BEGINNER;
DESC DEFENSE_BEGINNER;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO DEFENSE_INTERMEDIATE 
VALUES (0608, 'Shreyasi', 'Thota', 'shreyasi@gmail.com', 23, 'DEFENSE', 'INTERMEDIATE'); 

INSERT INTO DEFENSE_INTERMEDIATE 
VALUES (0609, 'Ankita', 'Dawar', 'dawar@yahoo.com', 25, 'DEFENSE', 'INTERMEDIATE'); 

SELECT * FROM DEFENSE_INTERMEDIATE;
DESC DEFENSE_INTERMEDIATE;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO DEFENSE_EXPERT 
VALUES (0610, 'Adam', 'Chaudry', 'adam@gmail.com', 23, 'DEFENSE', 'EXPERT'); 

INSERT INTO DEFENSE_EXPERT 
VALUES (0611, 'Akhil', 'Nibber', 'nibber@yahoo.com', 21, 'DEFENSE', 'EXPERT'); 

SELECT * FROM DEFENSE_EXPERT;
DESC DEFENSE_EXPERT;
--TANMOY CHOWDHURY
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO STRICKER 
VALUES (0614, 'Vyshnavi', 'Ukkalam', 'vyshnavi@gmail.com', 19, 'STRICKER'); 

INSERT INTO STRICKER 
VALUES (0615, 'Waliyat ', 'Olayiwola', 'olayiwola@yahoo.com', 22, 'STRICKER'); 

INSERT INTO STRICKER 
VALUES (0616, 'Prayas', 'Timalsina', 'prayas@gmail.com', 23, 'STRICKER'); 

INSERT INTO STRICKER 
VALUES (0617, 'Michael', 'Iganibo', 'fuby@yahoo.com', 25, 'STRICKER'); 

INSERT INTO STRICKER 
VALUES (0618, 'Xin', 'Zhang', 'xin@gmail.com', 24, 'STRICKER'); 

INSERT INTO STRICKER 
VALUES (0619, 'Karthik', 'Goud', 'goud@yahoo.com', 20, 'STRICKER'); 

SELECT * FROM STRICKER;
DESC STRICKER;
--TANMOY CHOWDHURY
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO STRICKER_BEGINNER 
VALUES (0614, 'Vyshnavi', 'Ukkalam', 'vyshnavi@gmail.com', 19, 'STRICKER', 'BEGINNER'); 

INSERT INTO STRICKER_BEGINNER 
VALUES (0615, 'Waliyat ', 'Olayiwola', 'olayiwola@yahoo.com', 22, 'STRICKER', 'BEGINNER'); 

SELECT * FROM STRICKER_BEGINNER;
DESC STRICKER_BEGINNER;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO STRICKER_INTERMEDIATE 
VALUES (0616, 'Prayas', 'Timalsina', 'prayas@gmail.com', 23, 'STRICKER', 'INTERMEDIATE'); 

INSERT INTO STRICKER_INTERMEDIATE 
VALUES (0617, 'Michael', 'Iganibo', 'fuby@yahoo.com', 25, 'STRICKER', 'INTERMEDIATE'); 

SELECT * FROM STRICKER_INTERMEDIATE;
DESC STRICKER_INTERMEDIATE;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO STRICKER_EXPERT 
VALUES (0618, 'Xin', 'Zhang', 'xin@gmail.com', 24, 'STRICKER', 'EXPERT'); 

INSERT INTO STRICKER_EXPERT 
VALUES (0619, 'Karthik', 'Goud', 'goud@yahoo.com', 20, 'STRICKER', 'EXPERT'); 

SELECT * FROM STRICKER_EXPERT;
DESC STRICKER_EXPERT;
--TANMOY CHOWDHURY
------------------------------------------------------------------------------------
INSERT INTO CATEGORY 
VALUES ('01GLBG', 'GOALKEEPER', 'BEGINNER'); 

INSERT INTO CATEGORY 
VALUES ('02GLINT', 'GOALKEEPER', 'INTERMEDIATE'); 

INSERT INTO CATEGORY 
VALUES ('03GLEX', 'GOALKEEPER', 'EXPERT'); 

INSERT INTO CATEGORY 
VALUES ('04DFBG', 'DEFENSE', 'INTERMEDIATE'); 

INSERT INTO CATEGORY 
VALUES ('05DFINT', 'DEFENSE', 'BEGINNER'); 

INSERT INTO CATEGORY 
VALUES ('06DFEX', 'DEFENSE', 'EXPERT'); 

INSERT INTO CATEGORY 
VALUES ('07STBG', 'STRICKER', 'BEGINNER'); 

INSERT INTO CATEGORY 
VALUES ('08STINT', 'STRICKER', 'INTERMEDIATE'); 

INSERT INTO CATEGORY 
VALUES ('09STEX', 'STRICKER', 'EXPERT'); 

SELECT * FROM CATEGORY;
DESC CATEGORY;
--TANMOY CHOWDHURY

---------------------------------------------
INSERT INTO PLAYERCAT 
VALUES (0604, '01GLBG'); 

INSERT INTO PLAYERCAT 
VALUES (0605, '01GLBG'); 

INSERT INTO PLAYERCAT 
VALUES (0602, '02GLINT'); 

INSERT INTO PLAYERCAT 
VALUES (0603, '02GLINT'); 

INSERT INTO PLAYERCAT 
VALUES (0612, '03GLEX'); 

INSERT INTO PLAYERCAT 
VALUES (0613, '03GLEX');  

INSERT INTO PLAYERCAT 
VALUES (0606, '04DFBG'); 

INSERT INTO PLAYERCAT 
VALUES (0607, '04DFBG'); 

INSERT INTO PLAYERCAT 
VALUES (0608, '05DFINT'); 

INSERT INTO PLAYERCAT 
VALUES (0609, '05DFINT'); 

INSERT INTO PLAYERCAT 
VALUES (0610, '06DFEX'); 

INSERT INTO PLAYERCAT 
VALUES (0611, '06DFEX'); 

INSERT INTO PLAYERCAT 
VALUES (0614, '07STBG'); 

INSERT INTO PLAYERCAT 
VALUES (0615,'07STBG'); 

INSERT INTO PLAYERCAT 
VALUES (0616,'08STINT'); 

INSERT INTO PLAYERCAT 
VALUES (0617, '08STINT'); 

INSERT INTO PLAYERCAT 
VALUES (0618, '09STEX'); 

INSERT INTO PLAYERCAT 
VALUES (0619, '09STEX'); 

SELECT * FROM PLAYERCAT;
DESC PLAYERCAT;
--TANMOY CHOWDHURY
---------------------------------------------
INSERT INTO DRILL 
VALUES ('PA01', 'PASSING', 15); 

INSERT INTO DRILL 
VALUES ('DR01', 'DRIBBLING', 05);
 
INSERT INTO DRILL 
VALUES ('SH01', 'SHOOTING', 12); 

SELECT * FROM DRILL;
DESC DRILL;
--TANMOY CHOWDHURY
---------------------------------------------
INSERT INTO CAT_DRILL 
VALUES ('03GLEX', 'PA01'); 

INSERT INTO CAT_DRILL 
VALUES ('05DFINT', 'DR01');
 
INSERT INTO CAT_DRILL 
VALUES ('08STINT', 'SH01'); 

SELECT * FROM CAT_DRILL;
DESC CAT_DRILL;
--TANMOY CHOWDHURY
