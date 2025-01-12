DROP DATABASE IF EXISTS q2_thepond;
CREATE DATABASE q2_thepond;
USE q2_thepond;

CREATE TABLE devices (
	DeviceID varchar(50) PRIMARY KEY,
    DeviceName varchar(255),
    Description TEXT
);

CREATE TABLE measurement (
	SequenceNumber INT PRIMARY KEY AUTO_INCREMENT,
    DeviceID varchar(50),
    MeasuredValue float,
    MeasureDate DATETIME,
    CONSTRAINT measurement_fk1 FOREIGN KEY(DeviceID)
		REFERENCES devices(DeviceID)
);