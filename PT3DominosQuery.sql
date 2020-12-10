
use dominosspizza;

select count(orderNUMBER),concat(c.Firstname,c.lastname) as 'Full Name', c.address, c.cellphone from customer c join orders o on o.CID=c.CID Group by c.firstname,c.lastname,c.address,c.cellphone order by c.firstname;#PT3 istiaque ferdous 
select a.appetizername,a.price,o.appetizerquantity from appetizer a join orders o on a.appetizerid=o.appetizerid where o.orderstatus='Placed'; #PT3 istiaque ferdous 
SELECT OrderNumber, DATE_FORMAT(OrderDate,'%c/%d/%y')AS 'Order Date', OrderStatus, CID, AppetizerID, AppetizerQuantity, PizzaID, PizzaQuantity, CONCAT('$',TotalPrice) AS Total_Price FROM Orders WHERE OrderStatus = 'Cancelled' AND(AppetizerID = 'CC2L' OR AppetizerID= 'CRIBTW');# P2istiaque ferdous
select p.pname,p.pizzasize,p.pizzaprice from pizza p join orders o on p.pizzaid=o.pizzaid where pname REGEXP'cheese' OR pname  REGEXP 'zza' AND pizzaprice>7.99 GROUP BY P.pname, p.pizzasize, p.pizzaprice ;#pt3 istiaque ferdous