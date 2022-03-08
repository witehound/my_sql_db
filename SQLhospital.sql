CREATE DATABASE hospital


CREATE TABLE Patient(
    patient_id int PRIMARY KEY,
    [name] VARCHAR(50),
    age int ,
    gender VARCHAR(50),
    [address] VARCHAR(50),
    disease VARCHAR(50),
    doctor_id INT
    )

INSERT into Patient(patient_id,name,age,gender,address,disease,doctor_id)
    VALUES (6447,'Wale',19,'Male','1260 Simpson Square','Typhoid',252),
           (5630,'Quadri',23,'Male','1499 Ingram Street','Cholera',1588),
           (9003,'Justina',36,'Female','1541 Woodside Circle','Polymyositis',7599),
           (2627,'Shalewa',50,'Female','2532 Oakwood Circle','Pars planitis',1605),
           (1605,'Johnson',38,'Male','1578 Emily Drive','Influenza',4561)

SELECT patient_id, [name], age from Patient
where age>= 30 

update Patient 
set [name] = 'frank'
where patient_id= 5630


DELETE from Patient
where patient_id = 1605

select * from Patient



CREATE TABLE Doctor(
    doctor_id INT PRIMARY KEY,
    [name] VARCHAR (50),
    age int,
    gender VARCHAR(50),
    [address] VARCHAR(50),
)
INSERT into Doctor(doctor_id,name,age,gender,address)
   VALUES (775,'Jonathan Williams',53,'Male','3055 Tator Patch Road'),
           (4113,'Catherine Morgan',46,'Female','2036 Gateway Avenue'),
           (1359,'Harry Bennett',29,'Male','1642 Bedford Street'),
           (4026,'Paul Bell',40,'Male','63 Church Street'),
           (7476,'Scott Anderson',27,'Male','857 Better Street')
SELECT * FROM Doctor

CREATE TABLE Laboratory(
    lab_no INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    date VARCHAR(50),
    amount VARCHAR(50)
)
INSERT INTO Laboratory(lab_no,patient_id,doctor_id,date,amount)
    VALUES(66452,117,3467,'19 June 2001','$1714'),
           (2380,71,2590,'22 January 2006','$613'),
           (5419,52,9751,'22 February 2009','$784'),
           (4346,664,773,'4 March 2003','$255'),
           (1111,500,53,'29 October 2017','$866')
SELECT * FROM Laboratory

CREATE TABLE Inpatient(
    patient_id int PRIMARY KEY,
    room_no INT,
    date_of_adm VARCHAR(50),
    lab_no INT
)
INSERT INTO Inpatient(patient_id,room_no,date_of_adm,lab_no)
VALUES(276,1,'21 May 2002',11),
      (712,3,'23 December 2004',16),
      (998,5,'20 January 2009',4),
      (335,6,'17 February 2015',2),
      (778,8,'27 May 2021',14)
SELECT * FROM Inpatient   

CREATE TABLE Outpatient(
    patient_id int PRIMARY KEY,
    [date] VARCHAR(50),
    lab_no INT
)
INSERT INTO Outpatient(patient_id,[date],lab_no)
VALUES(845,'23 January 2002',43),
      (630,'15 October 2003',32),
      (740,'26 May 2011',63),
      (350,'1 June 2021',34),
      (940,'15 June 2022',92)
SELECT * FROM Outpatient

CREATE TABLE Room(
    room_id INT PRIMARY KEY,
    room_type VARCHAR(50),
    [status] VARCHAR(50)
)
INSERT INTO Room(room_id,room_type,status)
VALUES(34,'consulting room','Inpatient Status'),
      (9,'dispensary','Inpatient Status'),
      (90,'emergency department','Observation Status'),
      (79,'maternity ward','Observation Status'),
      (11,'operating theatre','Inpatient Status')
SELECT * FROM Room   
CREATE TABLE Bill(
    bill_no INT PRIMARY KEY, 
    patient_id INT,
    doctor_charge VARCHAR(50),
    room_charge VARCHAR(50),
    no_of_days INT,
    lab_chargebill VARCHAR(50)
)
INSERT INTO Bill(bill_no,patient_id,doctor_charge,room_charge,no_of_days,lab_chargebill)
VALUES(7927,553,'$677','$225',10,'$910'),
       (735,715,'$65','$286',72,'$360'),
       (190,870,'$933','$354',56,'$721'),
       (368,543,'$897','$657',34,'$300'),
       (709,533,'$532','$22',23,'$971')
SELECT * FROM Bill
