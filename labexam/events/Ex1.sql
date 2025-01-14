USE q2_eventmanagementdb;

DROP VIEW IF EXISTS Query1;
CREATE VIEW Query1 AS
SELECT 
	a.Email
FROM events AS e
	JOIN registrations AS r ON e.EventID = r.EventID
    JOIN attendees AS a ON r.AttendeeID = a.AttendeeID;
    
SELECT * FROM Query1;

DROP VIEW IF EXISTS Query2;
CREATE VIEW Query2 AS
SELECT
	et.EventType,
    COUNT(e.eventTypeID) AS 'Number of events'
FROM event_types AS et
	JOIN events AS e ON et.EventTypeID = e.EventTypeID
GROUP BY
	et.EventType;
    
SELECT * FROM Query2;

DROP VIEW IF EXISTS Query3;
CREATE VIEW Query3 AS
SELECT
	YEAR(p.PaymentDate) AS `Year`,
    MONTHNAME(p.PaymentDate) AS `Month`,
	SUM(PaymentAmount) AS `Total Amount`
FROM payments AS p
GROUP BY
	`Year`,
    `Month`
ORDER BY
	`Year`,
    `MONTH`
    DESC;
    
SELECT * FROM Query3;

DROP VIEW IF EXISTS Query4;
CREATE VIEW Query4 AS
SELECT
	r.RegistrationID,
    DATE(r.RegistrationDate),
    r.RegistrationFee
FROM registrations AS r
	JOIN payments AS p ON r.FeeScheduleID = p.PaymentID
WHERE
	p.PaymentAmount < r.RegistrationFee
ORDER BY
	r.RegistrationFee DESC;

SELECT * FROM Query4;


DROP VIEW IF EXISTS Query5;
CREATE VIEW Query5 AS
SELECT
	