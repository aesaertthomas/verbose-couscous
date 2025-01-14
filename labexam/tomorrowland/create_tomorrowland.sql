DROP DATABASE IF EXISTS q2_tomorrowland;
CREATE DATABASE q2_tomorrowland;

USE q2_tomorrowland;

CREATE TABLE stages (
	StageID INT PRIMARY KEY AUTO_INCREMENT,
    AvailableTickets INT,
    StageName varchar(150),
    Capacity INT
);

CREATE TABLE hosts (
	HostID INT PRIMARY KEY AUTO_INCREMENT,
    Host varchar(150)
);

CREATE TABLE editions (
	EditionID INT PRIMARY KEY AUTO_INCREMENT,
    Edition varchar(255),
    Weekend varchar(50),
    StartDay DATE,
    EndDay DATE
);

CREATE TABLE recordlabel (
	RecordLabelID INT PRIMARY KEY AUTO_INCREMENT,
    RecordLabel INT
);

CREATE TABLE artist (
	ArtistID INT PRIMARY KEY AUTO_INCREMENT,
    Artist INT,
    RecordLabelID INT,
    CONSTRAINT artist_fk1 FOREIGN KEY(RecordLabelID)
		REFERENCES recordLabel(RecordLabelID)
);

CREATE TABLE events (
	EventID INT PRIMARY KEY AUTO_INCREMENT,
    EditionID INT, -- fk --
    StartDay DATE,
    EndDay DATE,
    DateOf DATE,
    BeginTime TIME,
    EndTime TIME,
    StageID INT, -- fk --artist
    HostID INT,	-- fk --
    ArtistID INT, -- fk --
    CONSTRAINT events_fk1 FOREIGN KEY(EditionID)
		REFERENCES editions(EditionID),
	CONSTRAINT events_fk2 FOREIGN KEY(StageID)
		REFERENCES stages(StageID),
	CONSTRAINT events_fk3 FOREIGN KEY(HostID)
		REFERENCES hosts(HostID),
	CONSTRAINT events_fk4 FOREIGN KEY(ArtistID)
		REFERENCES artist(ArtistID)
)