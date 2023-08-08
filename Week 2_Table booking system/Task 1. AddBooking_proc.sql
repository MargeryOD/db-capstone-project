use LittleLemonDB;
DROP PROCEDURE IF EXISTS AddBooking; 
DELIMITER $$ 
CREATE PROCEDURE AddBooking(IN BookingID INT, IN BookingSlot DATE, IN TableNumber INT, IN CustomerID INT)
BEGIN 
INSERT INTO bookings (booking_id, date, table_number, customer_id) VALUES (BookingID, BookingSlot, TableNumber, CustomerID); 
SELECT "New booking added" AS "Confirmation";
END$$ DELIMITER ; 
CALL AddBooking(9, 3, 4, "2022-12-30");