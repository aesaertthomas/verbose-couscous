USE Q2_artemis;

-- Ex 1 --
SELECT
	c.customerID,
    c.Name,
    c.Address,
    CONCAT(c.Zipcode, " ", c.City) AS `Zipcode & City`

FROM tblcustomers AS c;

-- Ex 2 --
SELECT
	c.customerID,
    c.Name,
    c.Address,
    CONCAT(c.Zipcode, " ", c.City) AS `Zipcode & City`,
	c.Balance

FROM 
	tblcustomers AS c
WHERE
-- 	c.Balance BETWEEN 150 AND 300 --
	c.Balance >= 150 AND c.Balance <= 300	
    
ORDER BY
	c.Balance DESC;
    
-- Ex 3 --
SELECT
	e.EmployeeID,
    CONCAT(e.LastName, " ", e.FirstName) AS `FullName`,
    e.Address,
    CONCAT(e.Zipcode, " ", e.City) AS `Zipcode & City`,
	MONTHNAME(e.BirthDate) AS `Month`
FROM
	tblemployees AS e
WHERE
	MONTH(e.BirthDate) = 7 
    OR
    MONTH(e.BirthDate) = 8;
    
-- Ex 4 --
SELECT
	e.EmployeeID,
    CONCAT(e.LastName, " ", e.FirstName) AS `FullName`,
    e.Address,
    CONCAT(e.Zipcode, " ", e.City) AS `Zipcode & City`,
	MONTHNAME(e.BirthDate) AS `Month`
FROM
	tblemployees AS e
WHERE
	NOT(
		MONTH(e.BirthDate) = 7 
		OR
		MONTH(e.BirthDate) = 8
		);
		
-- Ex 5 --
SELECT
	e.EmployeeID,
    CONCAT(e.LastName, " ", e.FirstName) AS `FullName`,
    e.Address,
    CONCAT(e.Zipcode, " ", e.City) AS `Zipcode & City`,
	e.BirthDate
FROM
	tblemployees AS e
WHERE
	e.BirthDate BETWEEN '1960-01-01' AND '1966-01-27';
    
-- Ex 6 --
SELECT
	c.Name,
    c.City
FROM	
	tblcustomers AS c
WHERE
	c.City IN('Leuven', 'Herent', 'Kessel-Lo', 'Heverlee')
ORDER BY
	c.City;

    
-- Ex 7 --
SELECT
	c.Name,
    c.City
FROM	
	tblcustomers AS c
WHERE
	NOT c.City IN('Leuven', 'Herent', 'Kessel-Lo', 'Heverlee')
ORDER BY
	c.City;
    
    
-- Ex 10 --
SELECT
	p.ProductName,
    p.QuantityPerUnit
FROM 
	tblproducts AS p
WHERE
	p.QuantityPerUnit REGEXP "boxes|bottle|bottles";
    
-- Ex 12 --
SELECT
	CONCAT(c.Name, ' from ', c.City) AS `Customer name`
FROM
	tblcustomers AS c
WHERE
	c.Name REGEXP '^Vander';


-- Ex 13 --
SELECT
	CONCAT(c.Name, ' from ', c.City) AS `Customer name`
FROM
	tblcustomers AS c
WHERE
	c.Name REGEXP '^Vander.*t$';

-- Ex 14 --
SELECT
	CONCAT(c.Name, ' from ', c.Address) AS `Customer name`,
    c.Address -- TMP for verifying purposes --
FROM 
	tblcustomers AS c
WHERE
	c.Address REGEXP 'dorp';
    
    
-- Ex 15 --
SELECT
	s.Company
FROM 
	tblsuppliers AS s
WHERE
	s.Company REGEXP 'an|foot';
    
    
-- Ex 16 --
SELECT
	*
FROM tblproducts AS p
WHERE	
	p.NederlandseNaam REGEXP '^chef.*mix$';

-- Ex 17 --
SELECT 
	*
FROM 
	tblproducts AS p
WHERE 
	p.ProductName REGEXP 'c'
	AND 
	p.ProductName NOT REGEXP '^[^c]*C[^c]*$' 
ORDER BY 
	p.ProductName;  
    
    
    

