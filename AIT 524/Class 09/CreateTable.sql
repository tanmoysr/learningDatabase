CREATE TABLE Employee
(Employee_ID  NUMBER(8),
Last_Name VARCHAR2(15) NOT NULL,
First_Name VARCHAR2(15) NOT NULL,
Address VARCHAR2(50) NOT NULL,
Date_of_Hire Date NOT NULL
Job_Title VARCHAR2(10) NOT NULL,
Current_Pay_rate NUMBER(8,2) NOT NULL,
  CONSTRAINT Employee_Employee_id_pl PRIMARY KEY(Employee_ID),
  CONSTRAINT Employee_Current_Pay_rate_ck
        CHECK (Current_Pay_rate >= 7.25));


CREATE TABLE Member
(Member_ID  NUMBER(8),
Last_Name VARCHAR2(15) NOT NULL,
First_Name VARCHAR2(15) NOT NULL,
Address VARCHAR2(50) NOT NULL,
Membership_Status VARCHAR2(10) NOT NULL,
Membership_Expiry_Date Date NOT NULL,
Fine_Owed NUMBER(8,2) NOT NULL,
  CONSTRAINT Member_Employee_id_pl PRIMARY KEY(Member_ID),
  CONSTRAINT Member_Membership_Status_ck
        CHECK (Membership_Status in ('Active', 'Expired'));

 CREATE TABLE Book
 (Item_ID NUMBER(8),
 ISBN VARCHAR2(20) not NULL,
 Date_Published Date not NULL,
 	CONSTRAINT Book_Item_Id_PK PRIMARY KEY (Item_ID),
 	CONSTRAINT Book_Item_Id_FK FOREIGN KEY (Item_ID)
 		REFERENCES Item(Item_ID));

 CREATE TABLE Audio_Video
 (Item_ID NUMBER(8),
 No_Of_Disc NUMBER(2) NOT NULL,
 	CONSTRAINT Audio_Video_Item_Id_PK PRIMARY KEY (Item_ID),
 	CONSTRAINT Audio_Video_Item_Id_FK FOREIGN KEY (Item_ID)
 		REFERENCES Item(Item_ID));

CREATE TABLE Item
(Item_ID NUMBER(6),
Description VARCHAR2(30) NOT NULL,
Item_Type_ID CHAR(1) NOT NULL,
Assigned_Member_ID NUMBER(8),
Assigning_Employee_ID NUMBER(8),
Checkout_Date Date,
Fine_Amount NUMBER(6, 2),
	CONSTRAINT Item_Item_ID_PK PRIMARY KEY(Item_ID),
	CONSTRAINT Item_Assigned_Member_ID_FK FOREIGN KEY (Member_ID)
    	REFERENCES Member(Member_ID),
    CONSTRAINT Item_Assigning_Employee_ID_FK FOREIGN KEY (Employee_ID)
    	REFERENCES Employee(Employee_ID)); 


CREATE TABLE Computer
(Computer_ID NUMBER(6),
Location VARCHAR2(30) NOT NULL,
Working_status VARCHAR2(20) NOT NULL,
Use_status VARCHAR2(20) NOT NULL,
Assigned_Member_ID NUMBER(8),
Assigning_Employee_ID NUMBER(8),
Start_Time TIMESTAMP,
End_Time TIMESTAMP,
	CONSTRAINT Computer_Computer_ID_PK PRIMARY KEY(Computer_ID),
	CONSTRAINT Computer_Assigned_Member_ID_FK FOREIGN KEY (Member_ID)
    	REFERENCES Member(Member_ID),
    CONSTRAINT Computer_Assigning_Employee_ID_FK FOREIGN KEY (Employee_ID)
    	REFERENCES Employee(Employee_ID), 
    CONSTRAINT Computer_Use_Status_ck
        CHECK (Use_Status in ('Used', 'Unused')
    CONSTRAINT Computer_Working_Status_ck
        CHECK (Working_Status in ('Working', 'Not-Working')
    CONSTRAINT Computer_End_Time_ck
        CHECK (End_Time >= Start_Time));

CREATE TABLE Event
(Event_ID NUMBER(6),
Description VARCHAR2(30) NOT NULL,
Date_of_Event Date NOT NULL,
Coordinator_Employee_ID NUMBER(8) NOT NULL,
Location VARCHAR2(20),
	CONSTRAINT Event_Event_ID_ID_PK PRIMARY KEY(Event_ID),
    CONSTRAINT Event_Coordinator_Employee_ID_FK FOREIGN KEY (Employee_ID)
    	REFERENCES Employee(Employee_ID)); 

CREATE TABLE Attendance
(Member_ID NUMBER(6),
Event_ID NUMBER(6),
	CONSTRAINT Attendance_PK PRIMARY KEY (Member_ID, Event_ID),
	CONSTRAINT Attendance_Member_ID_FK FOREIGN KEY (Member_ID)
    	REFERENCES Member(Member_ID)
   	CONSTRAINT Attendance_Event_ID_FK FOREIGN KEY (Event_ID)
    	REFERENCES Event(Event_ID));