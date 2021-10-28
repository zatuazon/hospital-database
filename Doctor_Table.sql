Use Hospital;
SELECT * FROM hospital.doctor_table;

ALTER TABLE DOCTOR_TABLE
ADD AVAILABLE boolean;

UPDATE DOCTOR_TABLE D
SET AVAILABLE = (
CASE WHEN (Doctor_ID IN(SELECT P.Doctor_ID FROM Patient_Table P WHERE P.Doctor_ID = D.Doctor_ID)) THEN FALSE
	WHEN (Doctor_ID NOT IN(SELECT P.Doctor_ID FROM Patient_Table P WHERE P.Doctor_ID = D.Doctor_ID)) THEN TRUE
END);

UPDATE Doctor_Table
SET Block_Number = 100;

UPDATE Doctor_Table
SET Block_Number = 200;

UPDATE Doctor_Table
SET Block_Number = 300;

UPDATE Doctor_Table
SET Block_Number = 400;

UPDATE Doctor_Table
SET Block_Number = 500;

UPDATE Doctor_Table
SET Block_Number = 600;

DELETE FROM DOCTOR_TABLE;
