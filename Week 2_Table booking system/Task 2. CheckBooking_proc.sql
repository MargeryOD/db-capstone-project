use LittleLemonDB;
DROP PROCEDURE IF EXISTS CheckBooking;
CREATE PROCEDURE CheckBooking(Booking_Slot DATE,Table_Number INT)
	SELECT CONCAT("Table ", TableNumber, " is already booked")
    WHERE exists (select * from Bookings where BookingSlot = Booking_Slot and TableNumber = Table_Number);
CALL CheckBooking("2022-11-12", 3);