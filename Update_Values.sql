USE Hospital;
SET SQL_SAFE_UPDATES = 0;

UPDATE Patient
SET DoctorID = 1005
WHERE PatientID = 104;

UPDATE Patient
SET DoctorID = 1006
WHERE PatientID = 105;

UPDATE Patient
SET RoomNumber = 3
WHERE PatientID = 105;

UPDATE Patient
SET LastName = "David"
WHERE PatientID = 106;

UPDATE Patient
SET Ailment = "Broken Leg"
WHERE Ailment = "Cancer";

UPDATE Patient
SET Admission = current_timestamp;

SELECT *
FROM Patient
WHERE LastName LIKE "%Monarch";

UPDATE Room
SET NurseID = 2003
WHERE RoomNumber = 2;
-------------------------------

UPDATE Bill
SET Admission = '2020-04-25'
WHERE PatientID BETWEEN 103 AND 108;

UPDATE Bill
SET Admission = '2019-08-18'
WHERE PatientID BETWEEN 109 AND 113;


UPDATE Bill
SET Discharge = CURRENT_TIMESTAMP;

UPDATE Bill
SET HospitalStay = datediff(Discharge, Admission);

UPDATE Bill
SET TreatmentCost = 1000;

UPDATE Bill
SET BillAmount = TreatmentCost + (HospitalStay*50);

UPDATE Room SET NurseID = 2003 WHERE RoomNumber = 2;
