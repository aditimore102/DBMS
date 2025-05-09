CREATE DATABASE prac8;

USE prac8;

CREATE TABLE lib_book(bid INT,bname VARCHAR(20),qty INT);

CREATE TABLE lib_audit(bid INT,bname VARCHAR(20),qty INT);

INSERT INTO lib_book VALUES(1,"Secret",10),(2,"Hating game",30),(3,"The Alchemist",50),(4,"Love Hypothesis",45);

SELECT * FROM lib_book;

DELETE FROM lib_book where bid=4 or bid=2;

SELECT * FROM lib_audit;

SELECT * FROM lib_book;

UPDATE lib_book set qty=100 where bname="Secret";

SELECT * FROM lib_audit;