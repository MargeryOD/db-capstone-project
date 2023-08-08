use LittleLemonDB;
drop procedure if exists CancelOrder;
delimiter \\
create procedure CancelOrder(id int) 
begin
delete from Orders where ID=Orderid;
select concat("Order ", OrderID, " is cancelled") as Confirmation;
end\\
delimiter ;

call CancelOrder(5);