DROP DATABASE IF EXISTS q2_sportsclub;
CREATE DATABASE q2_sportsclub;

USE q2_sportsclub;

CREATE TABLE members (
	MemberID INT PRIMARY KEY AUTO_INCREMENT,
    MembershipNumber varchar(10),
    Name varchar(100),
    Address varchar(150),
    Zipcode INT,
    City varchar(50),
    PhoneNumber varchar(15)
);

CREATE TABLE disciplines (
	DisciplineID varchar(50) PRIMARY KEY,
    Distance float,
    Type varchar(20),
	Worldrecord TIME,
    EuropeanRecord TIME,
    BelgianRecord TIME
);

CREATE TABLE Results (
	MemberID INT,
    DisciplineID varchar(50),
    Date DATE,
    Location varchar(150),
    AchievedTime float,
    PRIMARY KEY(MemberID, DisciplineID, Date),
    CONSTRAINT results_fk1 FOREIGN KEY(MemberID)
		REFERENCES members(MemberID),
	CONSTRAINT result_fk2 FOREIGN KEY(DisciplineID)
		REFERENCES disciplines(DisciplineID)
);

INSERT INTO members (MembershipNumber, Name, Address, Zipcode, City, PhoneNumber)
VALUES 
		("M001", "Emma Jones", "123 Maple St", "90001", "Ghent", "0493123456"),
        ("M002", "Liam Smith", "456 Oak St", "90002", "Bruges", "0493765432");

INSERT INTO disciplines (DisciplineID, WorldRecord, EuropeanRecord, BelgianRecord)
VALUES 
	("100M sprint", '00:00:09.63', '00:00:09.80', '00:00:11.04'),
    ("Long Distance Marathon", '02:00:35',' 
    
    