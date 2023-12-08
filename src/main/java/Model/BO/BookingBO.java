package Model.BO;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

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
}
