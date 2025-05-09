DROP PROCEDURE IF EXISTS areacal;

DELIMITER //

CREATE PROCEDURE areacal()
BEGIN

DECLARE r int;
DECLARE a float;

SET r:=5;

LOOP_LABEL : LOOP
    IF (r>9) THEN
        LEAVE LOOP_LABEL;
    END IF;

    SET a:=3.14*r*r;
    INSERT INTO areas VALUES (r,a);
    SET r:=r+1;

    END LOOP;

END;
//

DELIMITER ;
