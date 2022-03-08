CREATE DATABASE SCHOOL

CREATE TABLE Student_info(
    id int not null,
    name varchar(40) not null,
    course varchar(40) not null,
    age int not null,
    phone varchar(40) not null,
    PRIMARY KEY(id)
)

CREATE TABLE teacher_info(
    id VARCHAR(40) not null,
    name varchar(40) not null,
    course varchar(40) not null,
    age int not null,
    phone varchar(40) not null,
    PRIMARY KEY(id)
)

INSERT into Student_info (id,name,course,age,phone)
VALUES(001,'BAJI','EEG',23,'090999999'),
(002,'MAJI','PPG',22,'090999999'),
(003,'KAJI','CEG',23,'090999999'),
(004,'ZAJI','CHG',24,'090999999')

INSERT into teacher_info (id,name,course,age,phone)
VALUES('001',' mr BAJI','EEG',32,'090999999'),
('002',' mrs MAJI','PPG',52,'090999999'),
('003',' mr KAJI','CEG',32,'090999999'),
('004','mrs ZAJI','CHG',42,'090999999')

SELECT * FROM Student_info

SELECT * FROM teacher_info

