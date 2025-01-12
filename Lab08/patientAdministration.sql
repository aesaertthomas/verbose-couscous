DROP DATABASE IF EXISTS q2_patientAdminstration;
CREATE DATABASE q2_patientAdminstration;

USE q2_patientAdminstration;

CREATE TABLE patient (
	PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Firstname varchar(150),
    Lastname varchar(150),
    Birthdate DATE
);

CREATE TABLE doctor (
	DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name varchar(150),
    TypeOfDoctor varchar(100)
);

CREATE TABLE prescription (
	PrescriptionID INT PRIMARY KEY AUTO_INCREMENT,
    DoctorID int,
    PatientID int,
    Treatment varchar(255),
    NumberOfTurns int,
    Frequency int, -- Expressed in weeks --
	CONSTRAINT prescriptionfk_1 FOREIGN KEY(DoctorID)
		REFERENCES doctor(DoctorID),
	CONSTRAINT prescriptionfk_2 FOREIGN KEY(PatientID)
		REFERENCES patient(PatientID)
);

CREATE TABLE appointment (
	AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PrescriptionID int,
    Time TIMESTAMP,
    Room int,
    CONSTRAINT appointment_fk1 FOREIGN KEY(PrescriptionID)
		REFERENCES prescription(PrescriptionID)
);

