CREATE DATABASE prac7;

USE prac7;

CREATE TABLE N_RollCall(rollno INT,name VARCHAR(30));

CREATE TABLE O_RollCall(rollno INT,name VARCHAR(30));

INSERT INTO N_RollCall values(1,"A"),(2,"B"),(3,"C"),(4,"D");

INSERT INTO O_RollCall values(2,"B"),(3,"C"),(5,"E"),(6,"F");

Call mycursor();

SELECT * FROM N_RollCall;