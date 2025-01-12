-- Querry 1 --
SELECT
	p.ProductName,
    c.CategoryName
FROM tblproducts AS p
	JOIN tblcategories AS c ON p.ProductNumber = c.CategoryNumber
ORDER BY
	c.CategoryName ASC;
    
-- Querry 2 --
SELECT
	o.OrderID,
	c.Name
FROM tblorders AS o
	JOIN tblcustomers AS c ON o.CustomerNumber = c.CustomerId

