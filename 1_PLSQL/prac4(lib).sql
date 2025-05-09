CREATE DATABASE prac4;

USE prac4;

CREATE TABLE Borrower(Rollno int,Name VARCHAR(20),DateofIssue DATE, NameofBook VARCHAR(20), Status VARCHAR(5));  

INSERT INTO Borrower VALUES (1,"NAITIK","2023-11-05","DBMS","I");

CREATE TABLE Fine(Rollno INT,Date DATE,Amt INT);

CALL p_fine(1,"DBMS");

SELECT * FROM Fine;