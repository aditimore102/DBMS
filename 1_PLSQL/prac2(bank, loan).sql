CREATE DATABASE prac2;

USE prac2;

CREATE table Customer(Account_no int PRIMARY KEY Auto_increment, Name varchar(20), Balance float,City Varchar(10));

INSERT INTO Customer(Name, Balance,City) values ("Ram",10000,"Pune"),("Ravi",25000,"Nasik"),("Sachin",30000,"Mumbai");

CREATE table Loan(Loan_no int, Name varchar(20), Loan_Amount float);

INSERT INTO Loan values (1,"Ram",10000),(2,"Ravi",50000),(4,"Dipak",40000);

SELECT Name FROM customer union SELECT Name FROM loan;

SELECT Name FROM customer where Name in (SELECT name FROM loan)

SELECT Name FROM customer where Name not in (SELECT name FROM loan);

CREATE VIEW cus_abv_20000 AS SELECT * FROM Customer where Balance >=20000;

CREATE VIEW cus_bel_20000 AS SELECT * FROM Customer where Balance >20000 and City="Nasik";

SELECT * FROM cus_bel_20000;

CREATE INDEX ind1 on Customer(Name);

CREATE INDEX ind2 on Customer(Account_no,Name);

SHOW INDEX FROM Customer;

SELECT * FROM Customer order by Balance ;

SELECT * FROM Customer order by Balance  desc;

SELECT Name,Loan_Amount,Loan_Amount*0.04*20 as interest FROM Loan;