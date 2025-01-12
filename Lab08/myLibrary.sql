DROP DATABASE IF EXISTS q2_mylibrary;
CREATE DATABASE q2_mylibrary;

USE q2_myLibrary;

CREATE TABLE authors (
	auno INT PRIMARY KEY AUTO_INCREMENT,
    firstname varchar(255),
    lastname varchar(255),
    city varchar(120),
    country varchar(120),
    birthdate DATE
);

CREATE TABLE publishers (
	pubno INT PRIMARY KEY AUTO_INCREMENT,
    pubname varchar(255),
    pubcity varchar(120),
    pubcountry varchar(120)
);

CREATE TABLE books (
	bookno INT PRIMARY KEY AUTO_INCREMENT,
    title varchar(100),
    subtitle varchar(100),
    language varchar(100),
    pubno int,
	CONSTRAINT fk_1 FOREIGN KEY(pubno)
		REFERENCES publishers(pubno)
);

CREATE TABLE editions (
	Edno INT PRIMARY KEY AUTO_INCREMENT,
    bookno int,
    `month` int,
    `year` int,
    CONSTRAINT fk_2 FOREIGN KEY(bookno)
		REFERENCES books(bookno)
);

CREATE TABLE booksauthors (
	bookno int,
    auno int,
    PRIMARY KEY(bookno, auno),
    CONSTRAINT fk_3 FOREIGN KEY(bookno)
		REFERENCES books(bookno),
	CONSTRAINT fk_4 FOREIGN KEY(auno)
		REFERENCES authors(auno)
);

-- Insert following Data (2) --
INSERT INTO publishers(pubname)
VALUES ("Wrox");
SET @pubno = LAST_INSERT_ID();


INSERT INTO books (title, language, pubno)
VALUES("Prfessional C#", "English", @pubno);
SET @bookno = LAST_INSERT_ID();

-- Authors --
INSERT INTO authors (firstname, lastname, city, country, birthdate)
VALUES
	("Christian", "Nagel", "San Francisco", "USA", '1970-12-24'),
	("Bill", "Evjen", "San Francisco", "USA", '1980-12-20'),
    ("Jay", "Glynn", "San Francisco", "USA", '1975-01-24');

SET @auno1 = LAST_INSERT_ID();
SET @auno2 = LAST_INSERT_ID() + 1;
SET @auno3 = LAST_INSERT_ID() + 2;

INSERT INTO booksauthors(bookno, auno)
VALUES
	(@bookno, @auno1),
    (@bookno, @auno2),
    (@bookno, @auno3);


-- Test to show data --
SELECT
	b.title,
    b.language,
	p.pubname,
	a.firstname, 
    a.lastname, 
    a.city, 
    a.country, 
    a.birthdate

FROM books AS b
	JOIN publishers AS p ON b.pubno = p.pubno
    JOIN booksauthors AS ba ON b.bookno = ba.bookno
    JOIN authors AS a ON ba.auno = a.auno;
    
-- Delete Bill Evjen
-- DELETE FROM authors
-- WHERE authors.firstname = "Bill" AND authors.lastname = "Evjen";
-- Observation: Cannot be done because of constraints (unless I were to change the settings of my db of course)

ALTER TABLE books
ADD preferred_language varchar(50);

ALTER TABLE books
ALTER preferred_language SET DEFAULT 'English';

ALTER TABLE books 
RENAME COLUMN preferred_language TO lang_pref;

ALTER TABLE books
MODIFY COLUMN preferred_language varchar(2) DEFAULT 'EN'; 




