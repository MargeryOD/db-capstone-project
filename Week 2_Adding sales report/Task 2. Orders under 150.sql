SELECT Customers.CustomerID, CONCAT(FirstNamw, LastName) as FullName, Orders.OrderID, TotalCost, MenuID
FROM Customers 
LEFT JOIN Bookings on Bookings.CustomerID = Customers.CustomerID
LEFT JOIN Orders on Bookings.BookingID = Orders.BookingID
WHERE Orders.TotalCost > 150
ORDER BY Orders.TotalCost;