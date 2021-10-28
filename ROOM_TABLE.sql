SELECT * FROM hospital.room_table;

INSERT INTO ROOM_TABLE (Patient_ID) 
SELECT Patient_ID
FROM Patient_Table P
WHERE P.Patient_ID > 0;


UPDATE ROOM_TABLE R
SET Block_Number = (
SELECT P.Block_Number 
FROM Patient_Table P
WHERE P.Patient_ID = R.Patient_ID
);

UPDATE ROOM_TABLE R
SET ROOM_NUMBER =  (
CASE WHEN BLOCK_NUMBER = 100 THEN 102
	WHEN BLOCK_NUMBER = 200 THEN 201
    WHEN BLOCK_NUMBER = 300 THEN 301
    WHEN BLOCK_NUMBER = 400 THEN 401
    WHEN BLOCK_NUMBER = 500 THEN 501
    WHEN BLOCK_NUMBER = 600 THEN 601
END)
WHERE Patient_ID > 50;

UPDATE ROOM_TABLE
SET ROOM_NUMBER = 202
WHERE Patient_ID = 8;

DELETE FROM ROOM_TABLE
WHERE Patient_ID < 21;

SELECT 
	P.Patient_ID,
    P.Last_Name,
    P.First_Name,
    P.Block_Number,
    R.Room_Number
FROM Patient_Table P
JOIN ROOM_TABLE R
USING(PATIENT_ID);

DELETE FROM ROOM_TABLE;


