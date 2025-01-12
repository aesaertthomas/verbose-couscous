DROP DATABASE IF EXISTS q2_competition;
CREATE DATABASE q2_competition;
USE q2_competition;

CREATE TABLE referees(
	refereeID INT PRIMARY KEY AUTO_INCREMENT,
    `Name` varchar(100),
    Country varchar(100),
    Gender varchar(100)
);

CREATE TABLE stadium ( 
	StadiumID INT PRIMARY KEY AUTO_INCREMENT,
    Stadium varchar(100),
    City varchar(100),
    Country varchar(100),
    NumSpectators INT
);

CREATE TABLE teams (
	TeamID INT PRIMARY KEY AUTO_INCREMENT,
    Team varchar(255),
    StadiumID INT,
    CONSTRAINT teams_fk1 FOREIGN KEY(StadiumID)
		REFERENCES stadium(StadiumID)
);

CREATE TABLE matches (
	MatchID INT PRIMARY KEY AUTO_INCREMENT,
    EventDateTime DATETIME,
    StadiumID INT,
    HomeTeamID INT,
    GuestTeamID INT,
    Result varchar(15),
	CONSTRAINT matches_fk1 FOREIGN KEY(StadiumID)
		REFERENCES stadium(StadiumID),
	CONSTRAINT matches_fk2 FOREIGN KEY(HomeTeamID)
		REFERENCES teams(TeamID),
	CONSTRAINT matches_fk3 FOREIGN KEY(GuestTeamID)
		REFERENCES teams(TeamID)
);

CREATE TABLE matchReferee (
	MatchID INT,
    RefereeID INT,
    RefereeRole varchar(45),
    PRIMARY KEY(MatchID, RefereeID),
    CONSTRAINT matchreferee_fk1 FOREIGN KEY(MatchID)
		REFERENCES matches(MatchID),
	CONSTRAINT matchrefereee_fk2 FOREIGN KEY(RefereeID)
		REFERENCES referees(RefereeID)
)