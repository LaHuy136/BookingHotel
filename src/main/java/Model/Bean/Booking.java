package Model.Bean;

import java.sql.Date;

public class Booking {
	int BookingID, UserID, NumGuest, TotalPrice;
	String RoomID, Status;
	Date CheckInDate, CheckOutDate;
	public int getBookingID() {
		return BookingID;
	}
	public void setBookingID(int bookingID) {
		BookingID = bookingID;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public int getNumGuest() {
		return NumGuest;
	}
	public void setNumGuest(int numGuest) {
		NumGuest = numGuest;
	}
	public int getTotalPrice() {
		return TotalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		TotalPrice = totalPrice;
	}
	public String getRoomID() {
		return RoomID;
	}
	public void setRoomID(String roomID) {
		RoomID = roomID;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public Date getCheckInDate() {
		return CheckInDate;
	}
	public void setCheckInDate(Date checkInDate) {
		CheckInDate = checkInDate;
	}
	public Date getCheckOutDate() {
		return CheckOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
		CheckOutDate = checkOutDate;
	}
}
