use LittleLemonDB;
INSERT INTO Bookings (BookingSlot, TableNumber, CustomerID)
VALUES ("2022-10-10", 2, 1),( "2022-11-12", 3, 3), ("2022-10-11", 2, 2), ("2022-10-13", 2, 1);
SELECT * FROM Bookings;