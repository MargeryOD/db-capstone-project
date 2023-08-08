use LittleLemonDB;
drop procedure if exists CancelOrder;
delimiter \\
create procedure CancelOrder(Order_id int) 
begin
delete from Orders where OrderID=Order_id;
select concat("Order ", OrderID, " is cancelled") as Confirmation;
end\\
delimiter ;

call CancelOrder(5)