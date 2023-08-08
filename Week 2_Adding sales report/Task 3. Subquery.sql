USE LittleLemonDB;
SELECT MenuID FROM Menus WHERE MenuID = any (SELECT MenuID from Orders where Quantity>2);