package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import Model.Bean.Booking;
import Model.Bean.Room;
public class BookingDAO {
	public boolean isExistUser(String email, String password, HttpSession session ) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM account WHERE Email = '" + email + "' AND Password = '" + password + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int UserID = rs.getInt("UserID");
				String UserName = rs.getString("Username");
				String Email = rs.getString("Email");
				String Role = rs.getString("Role");
				session.setAttribute("UserID", UserID);
				session.setAttribute("UserName", UserName);
				session.setAttribute("Email", Email);
				session.setAttribute("Role", Role);
				return true;
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return false;
	}
	
	public boolean resetPassword(String email, String password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "UPDATE account SET Password ='" + password +"' WHERE Email= '" + email + "'" ;
			int rs = stmt.executeUpdate(sql);
			while (rs > 0) {
				return true;
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return false;
	}
	
	public boolean registerUser(String username, String password, String email, String role) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO account(Username, Password, Email, Role) VALUES ('"+username+"','"+password+"','"+email+"','"+role+"')";
			int rs = stmt.executeUpdate(sql);
			while (rs > 0) {
				return true;
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return false;
	}
	
	public ArrayList<Room> getInfoRoom(HttpSession session) {
		ArrayList<Room> resultRoom = new ArrayList<Room>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM room";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Room room = new Room();
				room.setName(rs.getString("Name"));
				session.setAttribute("RoomName", rs.getString("Name"));
	            room.setRoomID(rs.getString("RoomID"));
	            session.setAttribute("RoomID", rs.getString("RoomID"));
	            room.setType(rs.getString("Type"));
	            room.setDescription(rs.getString("Description"));
	            room.setPrice(rs.getInt("PriceperNight"));
	            room.isAvailability(rs.getBoolean("Availability"));
	            resultRoom.add(room);
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return resultRoom;
	}
	
	public boolean insertBooking(String RoomID, int NumGuest, java.util.Date checkinDate, java.util.Date checkoutDate, int totalPrice, String status) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO bookings(RoomID, NumGuests, CheckinDate, CheckoutDate, TotalPrice, Status) VALUES ('"
					+ RoomID + "','"
					+ NumGuest + "','"
					+ checkinDate + "','"
					+ checkoutDate + "','"
					+ totalPrice + "','"
					+ status + "')";
			int rs = stmt.executeUpdate(sql);
			while(rs > 0) {
				return true;
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return false;
	}
	
	public ArrayList<Booking> getInfoBooking( ) {
		ArrayList<Booking> resultBK = new ArrayList<Booking>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM booking";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Booking bk = new Booking();
				bk.setBookingID(rs.getInt("BookingID"));
				bk.setUserID(rs.getInt("UserID"));
				bk.setRoomID(rs.getString("RoomID"));
	            bk.setNumGuest(rs.getInt("NumGuests"));
	            bk.setCheckInDate(rs.getDate("CheckinDate"));
	            bk.setCheckOutDate(rs.getDate("CheckoutDate"));
	            bk.setTotalPrice(rs.getInt("TotalPrice"));
	            bk.setStatus(rs.getString("Status"));
	            resultBK.add(bk);
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return resultBK;
	}
	
}
