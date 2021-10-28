SELECT * FROM hospital.patient_table;

UPDATE Patient_Table
SET Block_Number = NULL;

UPDATE Patient_Table
SET Doctor_ID = NULL;

UPDATE patient_table
SET Block_Number = 100;

UPDATE patient_table
SET DOCTOR_ID = 2
WHERE Patient_ID BETWEEN 101 AND 200;

SELECT *
FROM Patient_Table P
JOIN doctor_table D
USING(Doctor_ID);

SELECT 
	P.Patient_ID,
	P.Last_name,
    P.First_name,
    P.Disease,
    P.Treatment,
    D.Last_name AS DOCTOR
FROM Patient_Table P
JOIN Doctor_table D
USING(DOCTOR_ID);

DELETE FROM Patient_Table;