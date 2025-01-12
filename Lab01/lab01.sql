USE Q2_artemis;

-- Ex 1 --
SELECT
	p.ProductNumber,
    p.ProductName,
    p.PricePerUnit,
    CONCAT(p.Stock, " pieces"),
    CONCAT((p.PricePerUnit * p.Stock), " €") AS `Stock value`
FROM tblproducts as p;

-- Ex 3 --
SELECT
	c.customerId,
    c.Name,
    c.Type
FROM tblcustomers as c
WHERE
	c.City = "Tienen";
    
-- Ex 5 --
SELECT
	c.customerID,
    c.Name, 
    c.Type
FROM tblcustomers as c
WHERE
	c.Zipcode = 3600;
    
-- Ex 6 --
SELECT
	c.Name,
    c.Type,
    c.Balance
FROM
	tblcustomers AS c
WHERE
    c.Balance > 0
    AND
    c.City = "Tienen";

-- Ex 8
SELECT
	c.Type,
    c.Name,
    c.Address,
    CONCAT(c.Zipcode, " ", c.City) AS `City`
FROM tblcustomers AS c
WHERE
	c.Type = "T"
    OR
    c.Type = "W"
ORDER BY
	c.Type;
    
-- Ex 9 --
SELECT
	e.EmployeeID, 
    CONCAT(e.Lastname, " ", e.Firstname) AS `Fullname`,
    e.BirthDate
FROM tblemployees AS e
    WHERE e.BirthDate < '1950-01-01'
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    