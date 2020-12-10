
use dominosspizza;

select concat(c.firstname,c.lastname),concat(c.address,'',c.city,'',c.state,'',c.zipcode) as 'Full Address',email,  cellphone, (select count(orders.cid) from orders where cid=c.cid) as 'Total Amount Order' from customer as c order by c.firstname; #istiaque ferdous subquery 1 created
SELECT Pname, PizzaID, CONCAT('$', PizzaPrice) AS PizzaPrice FROM Pizza WHERE EXISTS( SELECT  * FROM Orders WHERE  ((PizzaQuantity > 4) OR (PizzaQuantity IN (4 , 6, 9, 10, 11))) AND Orders.PizzaID = Pizza.PizzaID);# istiaque ferdous subquery 2 created 
select EID,firstname,lastname from employee where  exists(select EID from orders where orderstatus='Cancelled'and orders.eid =employee.eid) ;#istiaque ferdous subquery 3 created 

 select *from orders where totalprice=(select max(totalprice) from orders);#istiaque ferdous subquery 4 created