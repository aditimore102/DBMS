DROP PROCEDURE IF EXISTS p_fine;

DELIMITER //

CREATE PROCEDURE p_fine(IN rno int, IN bname Varchar(10))
BEGIN

DECLARE d DATE;
DECLARE daycnt int;
DECLARE fine_amt int;

SELECT DateofIssue INTO d FROM Borrower WHERE Rollno = rno AND  NameofBook = bname;

SELECT DATEDIFF(NOW(),d) INTO daycnt;

IF(daycnt >= 15 AND daycnt <= 30) THEN 
    SET fine_amt:=5*daycnt;
    INSERT INTO Fine VALUES (rno,now(),fine_amt);
    UPDATE Borrower SET Status="R" WHERE Rollno=rno AND NameofBook = bname;

ELSEIF(daycnt > 30) THEN
    SET fine_amt:=30*5+50*(daycnt-30);
    INSERT INTO Fine VALUES (rno,now(),fine_amt);
    UPDATE Borrower SET Status="R" WHERE Rollno=rno AND NameofBook = bname;

ELSE
    UPDATE Borrower SET Status="R" WHERE Rollno=rno AND NameofBook = bname;

END IF;
END;

//

DELIMITER ;
