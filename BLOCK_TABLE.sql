USE Hospital;
SELECT * FROM hospital.block_table;

UPDATE BLOCK_TABLE B
SET OCCUPANTS = (
SELECT COUNT(Patient_ID)
FROM Patient_Table P
WHERE P.Block_Number = B.Block_Number
);

UPDATE BLOCK_TABLE B
SET ON_CALL = (
SELECT COUNT(Staff_ID)
FROM Staff_Table S
WHERE S.BLOCK_Number = B.BLOCK_Number
);


SELECT 
	P.Patient_ID,
    P.First_name,
    P.Block_number,
    S.Staff_ID,
    S.first_name
FROM BLOCK_TABLE AS R
JOIN Patient_Table AS P
USING (Block_Number)
JOIN Staff_Table AS S
USING (Block_Number);

DELETE FROM Block_TABLE;