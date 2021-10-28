USE Hospital;

CREATE TABLE PATIENT_TABLE(
Patient_ID INT AUTO_INCREMENT,
Last_name VARCHAR(20),
First_name VARCHAR(20),
Street_Address VARCHAR(100),
City VARCHAR(40),
Zip VARCHAR(30),
Sex VARCHAR(1),
Phone_Number VARCHAR(20),
Emergency_Contact VARCHAR(20),
Disease VARCHAR(20),
Treatment VARCHAR(40),
Block_Number INT,
DOCTOR_ID INT,
PRIMARY KEY (Patient_ID)
);

CREATE TABLE DOCTOR_TABLE(
DOCTOR_ID INT AUTO_INCREMENT,
Last_Name VARCHAR(30),
First_Name VARCHAR(30),
Position VARCHAR(30),
Block_Number INT,
PRIMARY KEY (DOCTOR_ID)
);


CREATE TABLE STAFF_TABLE(
Staff_ID INT AUTO_INCREMENT,
Last_Name VARCHAR(30),
First_Name VARCHAR(30),
Position VARCHAR(30),
Block_Number INT,
PRIMARY KEY (Staff_ID)
);


CREATE TABLE BLOCK_TABLE(
Block_Number INT,
Block_Name VARCHAR(20),
MAX_SPACE INT,
OCCUPANTS INT,
ON_CALL INT,
PRIMARY KEY (Block_Number)
);

CREATE TABLE ROOM_TABLE(
Patient_ID INT,
Block_Number INT,
Room_Number VARCHAR(20),
primary key(Patient_ID)
);

CREATE TABLE BILL_TABLE(
Patient_ID INT,
Admission DATE,
Discharge DATE,
Hospital_Stays INT,
Treatment_Cost INT,
BILL_AMOUNT INT,
PRIMARY KEY (Patient_ID),
FOREIGN KEY (Patient_ID) REFERENCES PATIENT_TABLE(Patient_ID) ON DELETE CASCADE
);

ALTER TABLE ROOM_TABLE
ADD FOREIGN KEY (Block_Number)
REFERENCES Block_Table(Block_Number)
ON DELETE SET NULL;

ALTER TABLE ROOM_TABLE
ADD FOREIGN KEY (Patient_ID)
REFERENCES Patient_Table(Patient_ID)
ON DELETE CASCADE;

ALTER TABLE DOCTOR_TABLE
ADD FOREIGN KEY (Block_Number)
REFERENCES BLOCK_TABLE(Block_Number)
ON DELETE SET NULL;

ALTER TABLE PATIENT_TABLE
ADD FOREIGN KEY (DOCTOR_ID)
REFERENCES DOCTOR_TABLE(DOCTOR_ID)
ON DELETE SET NULL;

ALTER TABLE PATIENT_TABLE
ADD FOREIGN KEY (Block_Number)
REFERENCES BLOCK_TABLE(Block_Number)
ON DELETE SET NULL;

ALTER TABLE STAFF_TABLE
ADD FOREIGN KEY(Block_Number)
REFERENCES BLOCK_TABLE(Block_Number)
ON DELETE SET NULL;

-- -----------------------------------------------------------------------------------------------------------------------

-- Patient

INSERT INTO Patient_Table (Last_Name, First_Name, Street_Address, City, Zip, Sex, Phone_Number, Emergency_Contact, Disease, Treatment)
VALUES 
	('Last', 'First', 'Address', 'City', 'Zip', 'M', 'Phone', 'Emergency', 'Disease', 'Treatment'),
    ('Last', 'First', 'Address', 'City', 'Zip', 'M', 'Phone', 'Emergency', 'Disease', 'Treatment'),
    ('Last', 'First', 'Address', 'City', 'Zip', 'M', 'Phone', 'Emergency', 'Disease', 'Treatment'),
    ('Last', 'First', 'Address', 'City', 'Zip', 'M', 'Phone', 'Emergency', 'Disease', 'Treatment'),
    ('Last', 'First', 'Address', 'City', 'Zip', 'M', 'Phone', 'Emergency', 'Disease', 'Treatment'),
    ('Last', 'First', 'Address', 'City', 'Zip', 'M', 'Phone', 'Emergency', 'Disease', 'Treatment'),
    ('Last', 'First', 'Address', 'City', 'Zip', 'M', 'Phone', 'Emergency', 'Disease', 'Treatment');
    
    
-- Staff

INSERT INTO STAFF_TABLE (Last_Name, First_Name, Position) VALUES 
	('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Nurse'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward'),
    ('FNewcwAS', 'FfsafasA', 'Ward');
    
-- Doctor

INSERT INTO DOCTOR_TABLE (Last_name, First_Name, Position)
VALUES
		('FNIUAS', 'FINREIUA', 'DOCTOR'),
		('VTUBFWIFN', 'VREFDADF', 'DOCTOR'),
		('NVIWNFW', 'NVIWENR', 'DOCTOR'),
		('FNIUAS', 'FINREIUA', 'DOCTOR'),
		('VTUBFWIFN', 'VREFDADF', 'DOCTOR'),
		('NVIWNFW', 'NVIWENR', 'DOCTOR'),
		('FNIUAS', 'FINREIUA', 'DOCTOR'),
		('VTUBFWIFN', 'VREFDADF', 'DOCTOR'),
		('NVIWNFW', 'NVIWENR', 'DOCTOR'),
		('FNIUAS', 'FINREIUA', 'DOCTOR'),
		('VTUBFWIFN', 'VREFDADF', 'DOCTOR'),
		('NVIWNFW', 'NVIWENR', 'DOCTOR'),
		('FNIUAS', 'FINREIUA', 'DOCTOR'),
		('VTUBFWIFN', 'VREFDADF', 'DOCTOR'),
		('NVIWNFW', 'NVIWENR', 'DOCTOR'),
		('FNIUAS', 'FINREIUA', 'DOCTOR'),
		('VTUBFWIFN', 'VREFDADF', 'DOCTOR'),
		('NVIWNFW', 'NVIWENR', 'DOCTOR');
        
-- Block

INSERT INTO BLOCK_TABLE (Block_Number,Block_Name, MAX_SPACE) VALUES 
    (100,'Emergency Room', 100), 
    (200,'Consulting Room', 40),
    (300, 'OR', 25),
    (400,'Operating Theater', 375), 
    (500,'Ward', 500),
    (600,'Doctors_Office', 20);
    
    
-- ROOM

INSERT INTO ROOM_TABLE (Patient_ID) 
SELECT Patient_ID
FROM Patient_Table;


-- BILL

INSERT INTO BILL_TABLE (Patient_ID)
SELECT Patient_ID
FROM Patient_Table;

-- --------------------------------------------------------------------------------------------------------------------------

-- DROP DATABASE HOSPITAL;











