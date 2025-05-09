CREATE DATABASE prac3;

USE prac3;

CREATE TABLE Student_Mark(Rollno int PRIMARY KEY, Name VARCHAR(20), Marks int, Branch VARCHAR(10));

INSERT INTO Student_Mark VALUES (1,"Ravi",90,"Computer"),(2 ,"Vedika",70,"Computer"),(3,"Aarush",95,"IT"),(4,"Jyoti",60,"IT");

SELECT * FROM  Student_Mark WHERE Marks >= 70;

SELECT * FROM  Student_Mark WHERE Marks < 70;

SELECT * FROM  Student_Mark WHERE Marks = 70 AND Name = "Vedika";

UPDATE Student_Mark SET Name = "Sachin" WHERE Name = "Ravi";

DELETE FROM Student_Mark WHERE Name = "Aarush";

SELECT MAX(Marks) FROM Student_Mark;

SELECT MIN(Marks),MAX(Marks),AVG(Marks),SUM(Marks),COUNT(Marks),Branch FROM Student_Mark GROUP BY Branch;