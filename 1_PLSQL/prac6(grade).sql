CREATE DATABASE prac6;

USE prac6;

CREATE TABLE Result(rollno INT,name VARCHAR(30),class VARCHAR(20));

CREATE TABLE Stud_Marks(rollno int PRIMARY KEY AUTO_INCREMENT ,name VARCHAR(20), marks int);

INSERT INTO Stud_Marks(name,marks) VALUES ("John Doe",850),("Harry Potter",1250),("Emma Watson",1450),("Lucy Hutton",950),("Tom Felton",750);

SELECT * FROM Stud_Marks;

CALL proc_Grade();