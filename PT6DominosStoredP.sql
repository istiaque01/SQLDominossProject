use dominosspizza;
DELIMITER //
create procedure CustomerOrders (IN CustomerID int)
BEGIN 
SELECT  c.CID,c.firstname,c.lastname,email,o.orderdate,p.pname,o.appetizerid, o.appetizerquantity, o.totalprice 
from customer AS c
join orders AS o on c.CID = o.CID
join pizza AS p on p.pizzaid = o.pizzaid
WHERE C.CID = CustomerID;

END //
DELIMITER ;#istiaque ferdous  i retirve here customer order and spent and Stored Procedure #1




DELIMITER $$
create procedure CustomerHighestOrders(IN CustomerID INT)
BEGIN 
select c.CID,c.firstname,c.lastname, max(o.totalprice) AS Max_Order
from customer AS C join orders AS o on c.CID=o.CID
where c.cid=customerID;

END$$
DELIMITER ;#istiaque ferdous  i retirve here customer higest amount they spent Stored Procedure #2