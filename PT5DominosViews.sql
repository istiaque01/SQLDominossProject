use dominosspizza;

create view DominoOwnerViews AS
select s.name,CONCAT(upper('s.Address,' ',s.city,' ',s.state,' ',s.zipcode')) AS 'Full addrress',s.StorePhoneNumber,concat(e.firstname,'',e.lastname) as 'Full Name',count(o.ordernumber) from store s 
join employee as e on e.storenumber=s.storenumber
join orders as o on e.EID=o.EID group by s.name,upper('s.Address,' ',s.city,' ',s.state,' ',s.zipcode'),s.StorePhoneNumber,e.firstname,e.lastname,o.ordernumber;#istiaque ferdous 1st view

create view KatDenningsOrders AS 

select concat(c.firstname,'',c.lastname) as 'Full Name',CONCAT(c.Address,' ',c.city,' ',c.state,' ',c.zipcode) AS 'Full addrress', c.cellphone, C.email, C.HomePhone, o.ordernumber,date_format(o.orderdate,'%c/%d/%Y') AS OrderDate,date_format(o.deliverydate,'%c/%d/%Y') AS DeliveryDate, o.appetizerquantity, a.appetizername, p.pname,p.pizzasize,o.PizzaQuantity,CONCAT('$',o.totalprice) AS TotalPrice
from customer c join orders o on c.CID=o.CID join pizza p on o.pizzaid=p.pizzaid join appetizer a on a.appetizerid=o.appetizerid
where c.email='katdennin@gmail.com';#istiaque ferdous 2st view