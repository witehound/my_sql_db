CREATE DATABASE BUSINESS
use business

CREATE TABLE UNIT(
    UNITid INT PRIMARY KEY,
    UNITName VARCHAR(50),
    DEPTid INT
)
INSERT INTO UNIT(UNITid,UNITName,DEPTid)
VALUES(639,'Joseph Harris',516),
       (531,'Paul Thomas',481),
       (793,'Lisa Hall',338),
       (900,'Brian Miller',437),
       (643,'Alexander Clark',51)
SELECT * FROM UNIT
CREATE TABLE staff(
    Staff_id int PRIMARY KEY,
    mcID int,
    staffName VARCHAR(50),
    [address] VARCHAR(50),
    jobCode INT,
    Qualification VARCHAR(50),
    SpeciliazeID INT 
)
INSERT INTO staff(Staff_id,mcID,staffName,address,jobCode,Qualification,SpeciliazeID)
VALUES(75179,5738,'Edward Moore','3799 Lost Creek Road',815,'Civil Engineer',6028),
       (27614,4785,'James Hughes','4607 Berry Street',929,'Surveyor',8930),
       (59960,5198,'Henry Smith','2550 Gorby Lane',765,'Editor',3590),
       (10632,7413,'Margaret Shaw','3153 Johnstown Road',1000,'Loan Officer',1076),
       (42019,5827,'Barbara Moore','1274 Sun Valley Road',2302,'Instructional Coordinator',445)
select * FROM staff
CREATE TABLE ward(
    wardID INT PRIMARY KEY,
    bedNO INT, 
    wardType VARCHAR(50),
    staffID INT,
    phoneNO INT
)
INSERT INTO ward(wardID,bedNO,wardType,staffID,phoneNO)
VALUES(1687,600,'CAUSALITY',38925,0803857),
       (5344,274,'GENERAL WARD',96092,07028049),
       (3044,130,'SEMI-SPECIAL ROOM',42351,08038577),
       (57099,411,'SPECIAL WARDS',37273,08139777),
       (8724,365,'DELUXE ROOM',78145,080380331)
SELECT *FROM ward       
DROP TABLE ward

CREATE TABLE department(
    deptID INT PRIMARY KEY,
    deptName VARCHAR(50),
    mcID INT, 
    HOD VARCHAR(50),
    extNo INT
)

INSERT INTO department(deptID,deptName,mcID,HOD,extNo)
VALUES(1687,'CAUSALITY',600,'Edward Moore',0803857),
       (5344,'GENERAL WARD',96092,'James Hughes',07028049),
       (3044,'SEMI-SPECIAL ROOM', 42351, 'Henry Smith',08038577),
       (57099,'SPECIAL WARDS',37273,'Margaret Shaw',08139777),
       (8724,'DELUXE ROOM',78145,'Barbara Moore',080380331)
SELECT *FROM ward 

CREATE TABLE MEDICALCENTER(
    mcId INT PRIMARY KEY,
    mcName VARCHAR(50),
    [address] VARCHAR(50),
    website VARCHAR(50),
)
INSERT INTO MEDICALCENTER(mcId,mcName,[address],website)
VALUES(639,'DELUXE ROOM','1274 Sun Valley Road','dr.com'),
       (531,'SPECIAL WARDS','3153 Johnstown Road', 'sr.com'),
       (793,'SEMI-SPECIAL ROOM', '2550 Gorby Lane','ssr.com'),
       (900,'GENERAL WARD','4607 Berry Street','gr.com'),
       (643,'CAUSALITY','3799 Lost Creek Road','cau.com')


CREATE TABLE REQUETS(
    reqid int PRIMARY KEY,
    mcID int,
    patientId int,
    contactNo VARCHAR(50),
    staffId int,
    EmergencyId INT,
    [status] VARCHAR(50),
    ambulance INT 
)
INSERT INTO REQUETS(reqid,mcID,patientId,contactNo,staffId,EmergencyId,[status],ambulance)
VALUES(75179,5738,5739,'234567899', 2020,815,'in progress',6028),
       (27614,4785,6738,'234567899',2020,929,'done',8930),
       (59960,5198,9128,'2557389',765,778,'in progess',3590),
       (10632,7413,9037,'3153883687',1000,873798,'done',1076),
       (42019,5827,4242,'1274743897',2302,82479,'in progress',445)


CREATE TABLE EmergencyUnit(
    EmergencyId INT PRIMARY KEY,
    mcId int,
    AvailableRoom int,
    Ambulance int,
    bed int
)
INSERT INTO EmergencyUnit(EmergencyId,mcId,AvailableRoom,Ambulance,bed)
VALUES(639,648,3,3,3),
       (531,676,4,4,4),
       (793,999,2,2,2),
       (900,526,6,3,5),
       (643,7623,7,7,7)