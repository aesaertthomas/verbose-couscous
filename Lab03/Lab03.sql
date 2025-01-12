-- Query 0 --
ALTER TABLE tblOrders CHANGE ShippingsCost ShippingCost double;


-- Query 2 --
SELECT
	o.CustomerNumber,
    -- Delivery date
    IF(
		o.DeliveryDate IS Null, 
		o.DeliveryDate, 
		"Not been deliverd yet"
	) AS `Deliverydate`,
    o.ShippingCost
FROM tblOrders AS o;

-- Query 3 --
SELECT
	p.CategoryNumber,
    CONCAT(
		COUNT(p.ProductNumber),
        IF(
			COUNT(p.ProductNumber) > 1,
            " products",
            " product"
		)
	) `NUMBER OF PRODUCTS`
FROM 
	tblproducts AS p
WHERE 
	p.PricePerUnit > 50
GROUP BY
	p.CategoryNumber
ORDER BY
	COUNT(p.ProductNumber) DESC;
    
-- Query 5 --
SELECT
	COUNT(c.CustomerId) AS `Count Customers`,
	c.City
FROM tblcustomers AS c
GROUP BY
	c.City
HAVING
	`Count Customers` > 5
ORDER BY	
	`Count Customers`;
    
-- Query 7 --
SELECT
	e.JobTitle,
    IF(e.Gender = 1, 
        "Man", 
        "Woman"
	) AS `Gender`,
    COUNT(e.EmployeeID) AS `Number of employees`
FROM tblemployees AS e
GROUP BY
	e.JobTitle,
    e.Gender
ORDER BY
	e.JobTitle;

-- IDK which querry -- 
SELECT
    p.CategoryNumber,
	p.SupplierNumber,
    
    -- Number of Products --
    CONCAT(
        COUNT(p.ProductNumber), 
        IF(
			COUNT(p.ProductNumber) > 1, 
            " pieces", 
            " piece"
		)
    ) AS `Number of Products`,
    
	-- Stock Price --
    CONCAT(
		ROUND(
			SUM(p.Stock * p.PricePerUnit),
			2 -- round off to 2 numbers after decimal
		),
        " €"
	) AS `Stock Value`
FROM tblproducts AS p
WHERE
	p.SupplierNumber = 4
GROUP BY
    p.CategoryNumber
HAVING
	SUM(p.Stock * p.PricePerUnit) > 1000
ORDER BY
    p.CategoryNumber;
 
-- Query 12 --
SELECT
	YEAR(o.DeliveryDate) AS `Year`,
    CONCAT(
		ROUND(
			AVG(
				DATEDIFF(o.DeliveryDate, o.OrderDate)
			), 
		0),
		" days"
    ) AS `Average delivery time`
FROM tblorders AS o
WHERE	
	o.DeliveryDate IS NOT NULL
GROUP BY
	`Year`
ORDER BY
	`Year` DESC;
    
