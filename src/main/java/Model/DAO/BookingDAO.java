package Model.DAO;

import java.sql.Connection;
import java.sql.Date;
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
				String Name = rs.getString("Username");
				String Role = rs.getString("Role");
				session.setAttribute("name", Name);
				session.setAttribute("role", Role);
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
		ArrayList<Room> result = new ArrayList<Room>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM rooms";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Room room = new Room();
				room.setName(rs.getString("Name"));
				session.setAttribute("RoomName", rs.getString("Name"));
	            room.setRoomID(rs.getString("room_id"));
	            session.setAttribute("RoomID", rs.getString("room_id"));
	            room.setType(rs.getString("type"));
	            room.setDescription(rs.getString("description"));
	            room.setPrice(rs.getInt("price_per_night"));
	            room.isAvailability(rs.getBoolean("availability"));
	            result.add(room);
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return result;
	}
	
	public boolean insertBooking(String RoomID, int NumGuest, java.util.Date checkinDate, java.util.Date checkoutDate, int totalPrice, String status) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO bookings(room_id, nums_guest, check_in_date, check_out_date, total_price, status) VALUES ('"
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
		ArrayList<Booking> result = new ArrayList<Booking>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookinghotel";	
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM bookings";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Booking bk = new Booking();
				bk.setBookingID(rs.getInt("Booking_id"));
				bk.setUserID(rs.getInt("UserID"));
				bk.setRoomID(rs.getString("room_id"));
	            bk.setNumGuest(rs.getInt("nums_guest"));
	            bk.setCheckInDate(rs.getDate("check_in_date"));
	            bk.setCheckOutDate(rs.getDate("check_out_date"));
	            bk.setTotalPrice(rs.getInt("total_price"));
	            bk.setStatus(rs.getString("status"));
	            result.add(bk);
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return result;
	}
	
}
