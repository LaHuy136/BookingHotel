package Model.BO;


import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import Model.Bean.Booking;
import Model.Bean.Room;
import Model.DAO.BookingDAO;

public class BookingBO {
	BookingDAO DAO = new BookingDAO();
	public boolean checkLogin(String email, String password, HttpSession session) {
		return DAO.isExistUser(email, password, session);
	}
	
	public boolean resetPW(String email, String password) {
		return DAO.resetPassword(email, password);
	}
	
	public boolean register(String username, String password, String email, String role) {
		return DAO.registerUser(username, password, email, role);
	}

	public ArrayList<Room> getInfoRoom(HttpSession session) {
		return DAO.getInfoRoom(session);
	}
	
	public boolean insertBooking(String RoomID, int NumGuest, java.util.Date checkinDate, java.util.Date checkoutDate, int totalPrice, String status) {
		return DAO.insertBooking(RoomID, NumGuest, checkinDate, checkoutDate, totalPrice, status);
	}
	
	public ArrayList<Booking> getInfoBooking() {
		return DAO.getInfoBooking();
	}
}
