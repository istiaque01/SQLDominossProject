use dominosspizza;
select *from customer;# P2 istiaque ferdous
select concat('$',Max(totalprice)) from orders;#P2 istiaque ferdous
select StoreNumber,CONCAT(Address,'',city,'',state,'',zipcode) AS 'Full addrress',storephonenumber from store where state='CA';# P2istiaque ferdous
SELECT OrderNumber, DATE_FORMAT(OrderDate,'%c/%d/%y')AS 'Order Date', OrderStatus, CID, AppetizerID, AppetizerQuantity, PizzaID, PizzaQuantity, CONCAT('$',TotalPrice) AS Total_Price FROM Orders WHERE OrderStatus = 'Cancelled' AND(AppetizerID = 'CC2L' OR AppetizerID= 'CRIBTW');# P2istiaque ferdous

SELECT Pname, Pizzasize, PizzaPrice FROM Pizza WHERE PizzaSize= 'Large' AND PizzaPrice >= 12.99 AND PName LIKE '%cheese%';# P2 ISTIAQUE FERDOUS 
