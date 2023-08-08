DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER $$ 
CREATE PROCEDURE UpdateBooking(IN BookingID INT, IN BookingSlot DATE) 
BEGIN
UPDATE bookings SET date = BookingSlot WHERE booking_id = BookingID; 
SELECT CONCAT("Booking ", BookingID, " updated") AS "Confirmation"; 
END$$ 
DELIMITER ; 
CALL UpdateBooking(9, "2022-12-17");